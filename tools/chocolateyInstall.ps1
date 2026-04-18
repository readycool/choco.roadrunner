$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.12/roadrunner-2025.1.12-windows-amd64.zip'
  checksum64     = '491244dc00ec58a4996bd0434eea6b4d877ea791e7ea6b75e294b9c04d9b2425196ae17884e61359dc793089d3f638dcaee8e3ffd1f9cfacc57cacefa855fda5'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
