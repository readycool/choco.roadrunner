$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.3.0/roadrunner-2024.3.0-windows-amd64.zip'
  checksum64     = 'b3a13a6f1f9fcb80309b5dda743a5ef5f5631a2e41cc31392915a9ac77c4f9231321d58d8a1bda159585f054ab0bf2080b1a86e1338e58829f2cc06497940a0f'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
