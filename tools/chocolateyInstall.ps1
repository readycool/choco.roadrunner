$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v3.0.1/roadrunner-3.0.1-windows-amd64.zip'
  checksum64     = '9e8d1e5ae369cbabb751408e9b99d9d6ce4b319ffcd9b079ccff80215c0847419c18416641008951bc039caa0b3afe09c4bac8a3d76b6cd151c3610c14257d2c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
