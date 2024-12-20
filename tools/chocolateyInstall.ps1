$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.3.1/roadrunner-2024.3.1-windows-amd64.zip'
  checksum64     = '6678f42947eaa66265c2fb5dd980fa4b48e77b9345284da7f015ce6f220d3e54558bd1c7f6fdbe8f7d122301fee610edb36230bc918e212ce88010a7afb5ff2f'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
