$packageArgs = @{
  packageName    = "$env:ChocolateyPackageName"
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit       = 'https://github.com/roadrunner-server/roadrunner/releases/download/v2023.3.12/roadrunner-2023.3.12-windows-amd64.zip'
  checksum64     = '7ffa773c3fbd36a17737220a0da1f2eb524700723b0054d781059f32ad89fb686b898e665d73aaa28e811fb06f5b1666bc93c6f6fa6b3755f467cbb06752f3ff'
  checksumType64 = 'sha512'
}

Install-ChocolateyZipPackage @packageArgs
