$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2023.3.11/roadrunner-2023.3.11-windows-amd64.zip'
  checksum64     = 'adc0e6704e1cab6fc72695ea4710ab98d2ed79b6c3453b15b7b1dc4b19729b6b50a2b99aa819e5082a5370f60e500f1b50eef0f8ca3c5babfac56fb224f8567b'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
