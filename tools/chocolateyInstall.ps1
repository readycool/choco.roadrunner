$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.3.4/roadrunner-2024.3.4-windows-amd64.zip'
  checksum64     = '99f67326a67643dd40180c621fa54272305b1d0506eadf72cd07e486ae39d1bb19752450aa9bf031ccfd4e39d73bf1678de879544083e3611c31d32c8a83eeb3'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
