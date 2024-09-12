$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.2.1/roadrunner-2024.2.1-windows-amd64.zip'
  checksum64     = 'ac98ed05946f862942900d501ef8deb13b22842bbbd020fe94670c93686744791f713b5a095b7f34fe6a1605624a03a21101a31a864681860c0666dfad06eefa'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
