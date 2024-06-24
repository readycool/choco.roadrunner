$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.1.5/roadrunner-2024.1.5-windows-amd64.zip'
  checksum64     = '420c89ed0d7a4f6a5d1349af552097c3ecdab84cd0606ffa3759d3fe59aae39f519905e8d4880aec7c502a8decfb881221d9e9c7adf4e2030562024cf14ef7e0'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
