$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.3/roadrunner-2025.1.3-windows-amd64.zip'
  checksum64     = '00d4f8f167aa270c3f06419e9c052483f649188216f01c109c30e7aedb3fc88461ca8fed4918c0a002bfea2f4980f9192bc6415232d765b34f261fa3c6a482b0'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
