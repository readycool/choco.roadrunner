$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2024.3.5/roadrunner-2024.3.5-windows-amd64.zip'
  checksum64     = '08c348061208bb4d69475d7c835620b05c5cdf39cb5f7f9df078281b388d86f0bd59bf2ee289996883902658704dbdbff70329842fec7371f7571b23a73d0c7f'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
