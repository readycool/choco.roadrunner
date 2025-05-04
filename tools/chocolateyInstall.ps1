$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.1/roadrunner-2025.1.1-windows-amd64.zip'
  checksum64     = '8cd46fc85808e399426802b50cc2f4c1207edfd0a19c592a110819789b1c3632a5f220e819fb9fae4afff1286deea1d897162f58490a19d53150d58dcb312a49'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
