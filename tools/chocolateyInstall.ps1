$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.3.2/roadrunner-2024.3.2-windows-amd64.zip'
  checksum64     = '9b2b37a74b4d382d737949263f06c9d4bf4fbc8683c5289ff0f198dbeccb73d74c3897fd897204fe1bae680d40f8442f6c0d366288e2abb79e8ea16d2bc81751'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
