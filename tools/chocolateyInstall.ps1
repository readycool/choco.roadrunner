$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.8/roadrunner-2025.1.8-windows-amd64.zip'
  checksum64     = 'fc04f561a802c5bc46e2b7bacdf729a98139761be1e3485d4cf7e03015906c1406bbccae968cd758ad6ef32cb6df3589ac2f9cffb2f83f03c072fa0902e22f7d'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
