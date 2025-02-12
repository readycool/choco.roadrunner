$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.3.3/roadrunner-2024.3.3-windows-amd64.zip'
  checksum64     = '4d4ae5defa314b557229dff29970444b189e2269f837d5dd125e5f573b179c0c67cc9c0922bd61a619d1dc1a528d414f67ffae6fde8969947a2c2005b10b7f28'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
