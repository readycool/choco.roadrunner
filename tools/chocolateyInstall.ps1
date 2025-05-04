$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.0/roadrunner-2025.1.0-windows-amd64.zip'
  checksum64     = 'b3e9552327d8ef20c5dced3f58ff1b850b4d1ba2302413ebcf35e089d68572e3e94ffc2015b252e92ce35c61e08f56ab9819443ede1c82f0cd6bf573278166ef'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
