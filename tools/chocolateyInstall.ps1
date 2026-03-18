$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.9/roadrunner-2025.1.9-windows-amd64.zip'
  checksum64     = 'b7ba30032ecede3d1f10828506f2cedcad1f4d21f36265f1dbf91a310d38dbb9484b834eb40b88f7cd191f42180944ac7094cf2a9387405ec108a55e46611ccb'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
