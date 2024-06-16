$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.1.4/roadrunner-2024.1.4-windows-amd64.zip'
  checksum64     = '61821a394487f53aaa5d894c6ff9744f5968fbebcfa97157b147162d85c40f87416e058c59fe82cac671b0980535cec84d61e31ef7eba9d0b71ac0da64c333ec'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
