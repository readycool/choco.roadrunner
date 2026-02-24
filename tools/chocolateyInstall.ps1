$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.7/roadrunner-2025.1.7-windows-amd64.zip'
  checksum64     = 'a3ebf7d26a8bfcf2ace5241a15f4ef8380e6ddd93b6f62044700158bc3d6a7b90acc713bc66935281984469d0e56cec47878e1c3167d299fcd7fc1c88297f05a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
