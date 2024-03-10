$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "kslite"
$url        = "https://github.com/Aptivi/NitrocidKS/releases/download/v0.1.0.1/0.1.0.1-bin-lite.zip"
$md5check   = "06cf51f6e1e1629c4f3ce60936e6a26c"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected MD5 Sum: $md5check"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "md5" -Checksum $md5check
