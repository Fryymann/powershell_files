
try { $null = gcm pshazz -ea stop; pshazz init 'default' } catch { }

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
# axwq4dfJkuvk8fox - Mongo Atlas password for username ideans
Import-Module posh-git



# Dood's Stuff

# dev folder
$dev_folder = "D:\data\developer"
function gpd {
    Set-Location $dev_folder
}

# ls functions
function ld {
    Get-ChildItem -Attributes Directory
}
function ldh {
    Get-ChildItem -Attributes Directory, Directory+Hidden
}
function lf {
    Get-ChildItem -Attributes !Directory
}
function lfh {
    Get-ChildItem -Attributes !Directory, !Directory+Hidden
}
function lro {
    Get-ChildItem -Attributes R
}
function lh {
    Get-ChildItem -Attributes Hidden
}
function la {
    Get-ChildItem -Attributes D, H, S, R, !Directory
}