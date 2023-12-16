$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2023.3.8/roadrunner-2023.3.8-windows-amd64.zip'
  checksum64     = '0f31d9c83c9a9161f85c1ecae98337f29eff2c30e9b29727ab5c3d31d3ef4f5f744a989b976b6511e40c412bb246d57a62a355e49f9cdf78bd502ab7bfc0041c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
