
$ErrorActionPreference = 'Stop';


$name= 'OpcClassicCoreComponents'
$url        = 'https://www.dropbox.com/s/wc3ttini4t0tm91/opc-core-componentsx86.msi?dl=1'
$url64      = 'https://www.dropbox.com/s/v1ku7cpqh09qrnf/opc-core-componentsx64.msi?dl=1'
$silent = '/quiet'
 
Install-ChocolateyPackage $name 'msi' $silent $url $url64
