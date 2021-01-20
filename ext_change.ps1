Write-Output "
This Script will change the file extensions of files in the folder of your 
chosing.  Follow the prompts. 
"
$PATH = Read-Host -Prompt 'Enter Path to folder.            '
$EXT_FROM = Read-Host -Prompt 'Enter current File Extension.    '
$EXT_TO = Read-Host -Prompt 'Enter wanted File Extension.     '

Get-ChildItem $PATH *.$EXT_FROM| Rename-Item -NewName {$_.name -Replace "\.$EXT_FROM",".$EXT_TO"}
