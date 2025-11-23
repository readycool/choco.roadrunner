$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.5/roadrunner-2025.1.5-windows-amd64.zip'
  checksum64     = '6594f216f602c2326ede4c82c225784d26969bbfecabdeeb1089ec098538791d4015f4ecd20db47c1ba75b08684b27e67596c9e35c01a861283d73451555d44d'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
