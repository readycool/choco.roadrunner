$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v3.1.0/roadrunner-3.1.0-windows-amd64.zip'
  checksum64     = '9169a8208f2ea40ca9294a6ca1d8e0043382126b029e4ae0bad612d45dc670b6de78b0898679322914b74734f0eeedc88470d495f32c07fb3ee2a0461c12d456'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
