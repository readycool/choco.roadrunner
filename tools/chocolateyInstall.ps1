$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.11/roadrunner-2025.1.11-windows-amd64.zip'
  checksum64     = 'fe7dadcffb1b5fa76595e31f891efb90d932eb7a14cff3d06ee4381f0467bb1f466d41ecb922a91b8afeac4384081e154b739d842f35b7ed16c6417f7323cf6c'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
