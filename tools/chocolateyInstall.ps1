$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.1.3/roadrunner-2024.1.3-windows-amd64.zip'
  checksum64     = '2548b81b07a91a43e0e670521e99ace7f6da9c0b539ffd9870eac49cd9230535195be65ae42297add35daf910fdeb7941bde4b5428d5da3b63af04ae9b31c9f0'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
