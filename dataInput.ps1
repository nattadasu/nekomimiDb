# Indefinately loop until ^C is pressed
For (; ; ) {
    Clear-Host; $artist = ""; $artistUrl = ""
    # Load index.tsv
    $csv = Import-Csv -Path index.tsv -Delimiter "`t"

    # Guess current new Hexadecimal ID from last array
    $last = $csv[$csv.Count - 1]
    $lastId = $last.ID

    # Convert to decimal
    $lastId = [Convert]::ToInt32($lastId, 16)
    $lid = $lastId

    # Increment by 1
    $lastId = $lastId + 1

    # Convert to hexadecimal
    $newId = '{0:X}' -f $lastId

    # Create new array

    Do {
        $id = Read-Host "DB ID ($newId)"
        if (!$id) {
            $id = $newId
        }
    } While (
        $id -match '^[0-9A-F]{8}$'
    )

    # Ask image url, can not empty
    Do {
        $url = Read-Host "Image URL"
    } While (
        !$url
    )

    # Ask image source, can not empty
    Do {
        $source = Read-Host "Image Source URL"
    } While (
        !$source
    )

    # Try autofill artist name and url by parsing $source if it is from twitter or deviantart
    Switch -Regex ($source) {
        "^https?://(www.|mobile.)?twitter.com" {
            # assumes link is https://twitter.com/abakada/status/123456789012345, and the artist is abakada
            $string = $source -replace "^https?://(www.|mobile.)?twitter.com/", ""
            $string = $string -replace "/status/.*", ""
            $artist = $string
            $artistUrl = "https://twitter.com/$string"
        }
        "^https?://(www.)?deviantart.com" {
            $string = $source -replace "^https?://(www.)?deviantart.com/", ""
            $string = $string -replace "/art/[\w\-]+", ""
            $artist = $string
            $artistUrl = "https://www.deviantart.com/$artist"
        }
        "^https?://[\w]+.lofter.com" {
            $string = $source -replace "^https?://", ""
            $string = $string -replace "\.lofter.com/post/[\w_]+", ""
            $artist = $string
            $artistUrl = "https://$($string).lofter.com"
        }
    }

    # Ask artist name, can not empty
    Do {
        if (!$artist) {
            $artist = Read-Host "Artist Name"
        }
        else {
            $art = $artist
            $artist = Read-Host "Artist Name ($artist)"
            if (!$artist) {$artist = $art}
        }
    } While (
        !$artist
    )

    # Ask artist url, can not empty
    Do {
        if (!$artistUrl) {
            $artistUrl = Read-Host "Artist URL"
        }
        else {
            $aurl = $artistUrl
            $artistUrl = Read-Host "Artist URL ($artistUrl)"
            If (!$artistUrl) {$artistUrl = $aurl }
        }
    } While (
        !$artistUrl
    )


    # Guess the platform
    $platform = Switch -Regex ($source) {
        "^https?://(www.)?pixiv.net" { "pixiv" }
        "^https?://(mobile.|www.)?twitter.com" { "twitter" }
        "^https?://(www.)?deviantart.com" { "deviantart" }
        "^https?://(www.)?instagram.com" { "instagram" }
        "^https?://(www.)?reddit.com" { "reddit" }
        "^https?://[\w]+.lofter.com" { "lofter" }
        "^https?://(www.)?tumblr.com" { "tumblr" }
        "^https?://(www.)?weibo.com" { "weibo" }
        "^https?://(www.)?patreon.com" { "patreon" }
        "^https?://(www.)?artstation.com" { "artstation" }
        "^https?://seiga.nicovideo.jp" { "seiga" }
        "^https?://(www.)?reddit.com" { "reddit" }
        "^https?://(www.)?hoyolab.com" { "hoyolab" }
        default {
            Read-Host "Unknown platform, please input manually"
        }
    }

    Write-Host "Platform: $platform"

    # Ask the media source, if empty put #N/A
    $media = Read-Host "Media Source (#N/A)"
    if (!$media) {
        $media = "#N/A"
    }

    # Ask gender on the image, selection [b]oy/[g]irl/b[o]th/[f]luid
    Do {
        Write-Host "Gender on image"
        Write-Host "- [b]oy" -ForegroundColor Blue
        Write-Host "- [g]irl" -ForegroundColor Red
        Write-Host "- b[o]th" -ForegroundColor Yellow
        Write-Host "- [f]luid" -ForegroundColor Green

        $gender = Read-Host "Selection"
    } While (
        $gender -notin @("b", "g", "o", "f", "boy", "girl", "both", "fluid")
    )

    $gender = Switch ($gender) {
        "b" { "boy" }
        "g" { "girl" }
        "o" { "duo" }
        "both" { "duo" }
        "f" { "nb" }
        "fluid" { "nb" }
    }

    # input all prompt to csv

    $datainput = [PsCustomObject][ordered]@{
        id             = $id
        imageUrl       = $url
        artist         = $artist
        artistUrl      = $artistUrl
        platform       = $platform
        imageSourceUrl = $source
        mediaSource    = $media
        girlOrBoy      = $gender
    }

    $csv += $datainput

    # Sort column, then save

    $csv | Select-Object id, imageUrl, artist, artistUrl, platform, imageSourceUrl, mediaSource, girlOrBoy | Export-Csv -Path index.tsv -Delimiter "`t" -NoTypeInformation -UseQuotes AsNeeded

    .\readmeGenerator.ps1

    git add index.tsv README.md
    git commit -m "Add ``$id`` ($gender) by $artist"
    git push
}
