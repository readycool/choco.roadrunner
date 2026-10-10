$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v3.0.0/roadrunner-3.0.0-windows-amd64.zip'
  checksum64     = '2727fff1ffa499bc7984f1f3326b255a5b87c500d7a8d19211d87b0fb44703b597ee3f6c9413d8728d1ef3ccbb50d36ce8450428bec61ddb8af884e643a7c5f7'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
