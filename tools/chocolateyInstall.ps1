$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.6/roadrunner-2025.1.6-windows-amd64.zip'
  checksum64     = '756268956e2efeca10141b42f04cf38daedd16df56a2104563a785885cfb4f1340ba0b583f7165ca6be4b7dd9234f89f91b19a0aae50e945e22bad070cf39854'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
