<#
.SYNOPSIS

convert cue definition files to typescript files
cue定義ファイルをtypescriptに変換します

this script require cue & cuetsy.
このスクリプトにはcueとcuetsyが必要です。

.EXAMPLE

ConvertTo-TypeScript.ps1 -System yuuyake_koyake

Convert a specific system. (e.g. yuuyake_koyake)

.EXAMPLE

ConvertTo-TypeScript.ps1 -System All

Convert all systems.

.PARAMETER System

When System = null, list all systems.

When System = All, convert all systems.

Otherwise, convert a specific system.

.LINK
https://github.com/cue-lang/cue
https://github.com/grafana/cuetsy

#>


Param(
    [string]$System
)



$root = Split-Path $PSScriptRoot -Parent 

function List-AllSystems 
{
    param (
        [string]$rootDirectory = $root
    )
    
    Get-ChildItem -Name -Directory -Path $rootDirectory | Where-Object { $_ -ne "scripts" } | Where-Object { $_ -ne "systems" }
    
}

if([string]::IsNullOrWhiteSpace($System))
{
    List-AllSystems
    return;
}

if( $System.Trim().ToLower( ) -eq "all")
{
    $me = (Get-Location).Path
    List-AllSystems | Where-Object { $_.Trim().ToLower( ) -eq "all" } |
        ForEach-Object { & $me -System $_ }
    return;
}

$systemDir = [System.IO.Path]::Combine($root,$System)
$cues = Get-ChildItem -File -Path $systemDir -Filter "*.cue"


if( Test-Path $systemDir/index.ts )
{
    Remove-Item $systemDir/index.ts -Force
}

foreach ( $cue in $cues )
{
    cuetsy --cuepath $cue -e -d - | Out-File $systemDir/index.ts -Encoding utf8 -Append
    $fpath = [System.IO.Path]::GetRelativePath((Get-Location).Path,[System.IO.Path]::ChangeExtension($cue.FullName,".json"))
    cue export --outfile "$fpath" --force  "$cue"
}