
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

  checksum      = 'AF63A3DE66B580962E9FBD4526E7E24A168ABAF01C71E66807DC48F6C4A5927E'
  checksumType  = 'sha256'
  checksum64    = 'ACC3FC18D8F619A29546F426620FDD7C552D184D2F16D77B5660865540C8E12B'
  checksumType64= 'sha256'

  silentArgs    = "/quiet /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs