$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2023.3.7/roadrunner-2023.3.7-windows-amd64.zip'
  checksum64     = 'd9f6cc2206237af6ec1f2c1300710c44ca2800a0567f07c382e1ac3d10489efad7ebd1744a5eb4c827aad7a17d1604638663cbd5ae57476dfb5ca719b2be8c29'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
