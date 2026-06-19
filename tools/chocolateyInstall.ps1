$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.15/roadrunner-2025.1.15-windows-amd64.zip'
  checksum64     = '670f394e3bb7d505db7634558e156fdd47d7924cdae787e506e93d806a0e4f06bf77a58d4f64624923002cf2a5f208f7d1e2195bffe3073724d4b34926fc532a'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
