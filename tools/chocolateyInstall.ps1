$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.2.0/roadrunner-2024.2.0-windows-amd64.zip'
  checksum64     = '91029d074dfd7305335d71e6e8feb35832eaddc0ef259d52905f8d1d0bfaba09e65aeefe0d383b11d5a1ba2495654e2d58cba07f563e8aaa1020fff1fdc52fa7'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
