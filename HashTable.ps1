Get-Process -Name svchost | measure -Property PM -Sum | select -Property @{
    n='Ram(MB)';
    e={'{0:N2}' -f ($PSItem.Sum / 1GB)}
}