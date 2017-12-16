param (
    [string]$service = "",
    [string]$isProvisionable = "np"
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
        if ($isProvisionable -eq "p")
        {
            Write-Host "System will perform provision..." -ForegroundColor Red;
            vagrant plugin install vagrant-vbguest
            vagrant up --provision;
        }
        elseif ($isProvisionable -eq "np") {
            Write-Host "System will NOT perform provision..." -ForegroundColor Green;
            vagrant plugin install vagrant-vbguest
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
