$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2023.3.10/roadrunner-2023.3.10-windows-amd64.zip'
  checksum64     = '3fbd210d820217dbaa1f94f227a59d6474dfd6363aea308bf3b9cfd83d8c33c153b17f49cd7c2fe643c8eb014e99cb23baad619892071e543bf82e820d2de8d7'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
