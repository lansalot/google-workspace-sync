
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.google.com/google-apps-sync/enterprise_gsync.msi'
$url64      = 'https://dl.google.com/dl/google-apps-sync/x64/enterprise_gsync.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Google Workspace Sync*'

  checksum      = '414396ACE7589FFE1607292AAAB666041C933EDDC620B64C01354CF2032D3FFD'
  checksumType  = 'sha256'
  checksum64    = '33224958A43FC7AA48689147F8A2C8543D4CE542FC44C3CE942347514E737090'
  checksumType64= 'sha256'

  silentArgs    = "/quiet /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs