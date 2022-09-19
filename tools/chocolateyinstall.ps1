$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staruml.io/download/releases-v5/StarUML%20Setup%205.0.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'staruml5'

  checksum      = '707ADCD61D2E4AA5D88B92F5F10776AD15E99EF796EF4C49D1477C3E2DA7B910'
  checksumType  = 'sha256'

  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs