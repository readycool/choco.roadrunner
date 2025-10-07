$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2025.1.4/roadrunner-2025.1.4-windows-amd64.zip'
  checksum64     = 'f6a0d3becfbe41027f76aa8ae1c021bf5c5e3b28ae295dabf3e423c369ee94cc3c762e858ecd61ffb697366a24808ff845ab61691851946a6eefccaafa594594'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
