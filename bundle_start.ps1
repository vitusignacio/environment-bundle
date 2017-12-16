param (
    [string]$service = "",
    [string]$provision = "np"
)
function Get-ScriptDirectory
{
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value;
    Split-Path $Invocation.MyCommand.Path;
}
$basePath = Get-ScriptDirectory;
try
{
    $folder = "$basePath\$service";
    Write-Host $folder;
    if (Test-Path -Path $folder)
    {
        cd $folder;
        if ($provision -eq "p")
        {
            Write-Host "System will perform provision..." -ForegroundColor Red;
            vagrant up --provision;
        }
        elseif ($provision -eq "np") {
            Write-Host "System will NOT perform provision..." -ForegroundColor Green;
            vagrant up --no-provision;
        }
        else {
            Write-Host "Nothing to do" -ForegroundColor Red;
        }
        cd $basePath
    }
    else
    {
        Write-Host "[ERROR] The path $folder not found." -ForegroundColor Red;
    }
} catch
{
    cd $basePath;
}
