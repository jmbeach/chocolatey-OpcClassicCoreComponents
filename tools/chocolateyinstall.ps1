
$ErrorActionPreference = 'Stop';
# Check system architecture
if ([System.IntPtr]::Size -eq 4) { 
	# 32-bit
	$path = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 'opc-core-componentsx86.msi'
	echo "Installing as 32-bit"
} else { 
	# 64-bit
	$path = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 'opc-core-componentsx64.msi'
	echo "Installing as 64-bit"
}
$name= 'OpcClassicCoreComponents'
$silent = '/quiet'

echo $path

Install-ChocolateyPackage $name 'msi' $silent $path
 
