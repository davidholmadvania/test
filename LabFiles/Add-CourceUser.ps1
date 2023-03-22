
function Add-CourceUser {
    [CmdletBinding()]
    
    param (
        $DatabaseFile = ".\MyLabFile.csv",
    [Parameter(Mandatory)]
    [string]
    $Name,
    [Parameter(Mandatory)]
    [int]
    $Age,
   
    [Parameter(Mandatory)]
    [string]
    [ValidateSet("red","green","blue","yellow")]
    $Color,

    
    $Id = ($Name + $Age)
)
$MyCsvUser = "$Name,$Age,{0},{1}" -f $Color, $Id
    
$NewCSv = Get-Content $DatabaseFile -Raw
$NewCSv += $MyCsvUser

Set-Content -Value $NewCSv -Path $DatabaseFile
}

