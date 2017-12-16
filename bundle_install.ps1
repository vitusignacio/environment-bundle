function Get-ScriptDirectory
{
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}
function Execute($folder)
{
    if (Test-Path -Path $folder)
    {
        $_folder = Join-Path ($basePath) $folder;
        cd $_folder;
    }
    else
    {
        Write-Host "[ERROR] The path $folder not found." -ForegroundColor Red;
    }
    vagrant up --provision
    vagrant plugin install vagrant-vbguest
    vagrant halt
}
$basePath = Get-ScriptDirectory
try
{
    Write-Host "Starting environment setup/configuration process..." -ForegroundColor Green;
    $services = @("apache2", "mysql", "mongodb", "redis");
    foreach ($service in $services)
    {
        Write-Host "Installing $service" -ForegroundColor Green;
        Execute($service);
        Write-Host "$service -> DONE";
        cd $basePath;
    }
}
catch
{
    cd $basePath;
}
