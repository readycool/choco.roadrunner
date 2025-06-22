$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.2/roadrunner-2025.1.2-windows-amd64.zip'
  checksum64     = 'd4b26fde507f8b1c132b439aed640738b38bbd455494a03ffbe127f4c01a4b4d0a87be0014502c1aea49cebd1a84ff92ff4eeb4b35f7f377a103ef83b85ab428'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
