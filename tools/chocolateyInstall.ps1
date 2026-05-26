$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.14/roadrunner-2025.1.14-windows-amd64.zip'
  checksum64     = '6027c755194cedb3cb4d127f72b94def82d2687eeadfcf8c8de9fdc66db2a7e898227193fe325c4eaf3ca6c57e1dc129b4b438732d3f041f2c253c29220de7c6'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
