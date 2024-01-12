$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2023.3.9/roadrunner-2023.3.9-windows-amd64.zip'
  checksum64     = '4fad2fa076c62fc09662c4cc3bfeed001575d098a2970dec47e88e89ca7d083a9b090867e66ff812e703108ad15d1d6482cdfb8dc7610ca024c3a15b682d847f'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
