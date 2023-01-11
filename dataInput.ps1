# Load index.tsv
$csv = Import-Csv -Path index.tsv -Delimiter "`t"

# Guess current new Hexadecimal ID from last array
$last = $csv[$csv.Count - 1]
$lastId = $last.ID

# Convert to decimal
$lastId = [Convert]::ToInt32($lastId, 16)

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

# Ask artist name, can not empty
Do {
    $artist = Read-Host "Artist Name"
} While (
    !$artist
)

# Ask artist url, can not empty
Do {
    $artistUrl = Read-Host "Artist URL"
} While (
    !$artistUrl
)

# Ask image source, can not empty
Do {
    $source = Read-Host "Image Source URL"
} While (
    !$source
)

# Guess the platform
$platform = Switch -Regex ($source) {
    "^https?://(www.)?pixiv.net" { "pixiv" }
    "^https?://(mobile.|www.)?twitter.com" { "twitter" }
    "^https?://(www.)?deviantart.com" { "deviantart" }
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
    id = $id
    imageUrl = $url
    artist = $artist
    artistUrl = $artistUrl
    platform = $platform
    imageSourceUrl = $source
    mediaSource = $media
    girlOrBoy = $gender
}

Write-Host @"
Copy this to Discord
id    imageUrl    artist    artistUrl    platform    imageSourceUrl    mediaSource    girlOrBoy
$id    $url    $artist    <$artistUrl>    $platform    <$source>    $media    $gender
"@

$csv += $datainput

# Sort column, then save

$csv | Select-Object id, imageUrl, artist, artistUrl, platform, imageSourceUrl, mediaSource, girlOrBoy | Export-Csv -Path index.tsv -Delimiter "`t" -NoTypeInformation -UseQuotes AsNeeded