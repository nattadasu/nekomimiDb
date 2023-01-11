# Import CSV
$csv = Import-Csv -Path .\index.tsv -Delimiter "`t"
$TextInfo = (Get-Culture).TextInfo

# header
$markdown = @"
# nekomimiDb

Your Open-Source SFW Database of Characters (girls/boys) with Cat Ears because life didn't give it enough.

## Why?

Some people like cat ears. Some people like anime. Some people like both. Some people like both and want to have a database of characters with cat ears. This is for them.

Although, there are several databases dedicated to nekomimi (猫耳/cat ear) like [CatBoys](https://catboys.com) for cat boys and [Neko-love](https://neko-love.xyz) for cat girls (or even Boorus), they sometime lack artwork sourcing/credit, are not SFW, have little artworks, or are not up-to-date.

This repository may helps you in sourcing/credit artwork, finding new characters, or just having fun, as most of data were handpicked to be SFW as possible.

However, most of the images were hosted using Danbooru CDN, your country might blocked the CDN ~~as the site's images are mostly NSFW~~.

## How?

This database is generated as [CSV/TSV file with tab as delimiter](./index.tsv) using [``dataInput.ps1``](./dataInput.ps1).

The script will asks for several questions like Image URL, character gender, and artist's page. The script will then add the data to index file/database.

## Any Guidelines?

Yes, *ofc*. Below are the guidelines:

1. Images must be SFW
   * Mild nudity is out
2. Avoid shota/loli
3. Make sure if artist allows reposting
4. **No AI arts**

For database format, below are the guidelines:

1. ID must in hexadecimal (base16) format, 0-9 a-f
2. Artist name is based on their profile's Display Name
3. Platform name must in lowercase, latin
4. ``girlOrBoy`` valid string is either: ``boy``, ``girl``, ``duo`` (if image contains boy and girl), or ``nb`` (if character gender's on image unknown)
5. If a character is a VTuber, ``mediaSource`` must be corresponded to their agency name in Latin and exclude region code (Nijisanji, Hololive), otherwise follows "Character (VTuber)" format if solo/indie

## Statistics?

At the moment, we hosted **$($csv.Count) images** on index database.

| Platform | Count |
| -------: | :---- |
"@

# Count Platform
$csv | Group-Object -Property platform | Select-Object -Property Name, Count | ForEach-Object {
    # Capitalize first word
    $markdown += "`n| $($TextInfo.ToTitleCase($_.Name)) | $($_.Count) |"
}

$markdown += @"
`n`n| Gender | Count |
| -----: | :---- |
"@

$csv | Group-Object -Property girlOrBoy | Select-Object -Property Name, Count | ForEach-Object {
    $name = $_.Name
    $gender = Switch ($name) {
        "boy" { "Boy ``boy``" }
        "girl" { "Girl ``girl``"}
        "duo" { "Both ``duo``" }
        "nb" { "Non-Binary/Unknown ``nb``" }
    }
    $markdown += "`n| $($gender) | $($_.Count) |"
}

$markdown += @"
`n`n| Source | Count |
| -----: | :---- |
"@

$csv | Group-Object -Property mediaSource | Sort-Object -Property Name | ForEach-Object {
    $markdown += "`n| $($_.Name) | $($_.Count) |"
}

$markdown += @"
`n`n| Artist | Count |
| -----: | :---- |
"@

$csv | Group-Object -Property artist | Select-Object -Property Name, Count | Sort-Object -Property Count, Name -Descending | ForEach-Object {
    $markdown += "`n| $($_.Name) | $($_.Count) |"
}

$markdown | Out-File -FilePath .\README.md -Encoding utf8