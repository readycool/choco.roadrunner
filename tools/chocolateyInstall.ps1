$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.13/roadrunner-2025.1.13-windows-amd64.zip'
  checksum64     = '677c0d985701e77c8cace6ec06d7e096c35f2c56196383aadc5dfae50c6bfe2923937211a74b81a71273e44bdf0bb9aeece5112e3e6b525152a8048525d3019c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
