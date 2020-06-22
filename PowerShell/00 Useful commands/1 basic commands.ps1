# Listing the drive
Get-PSDRive

# Listing only the drives of the file system
Get-PSDRive  -PSProvider FileSystem

# Listing the files in teh current directory
Get-ChildItem

# Listing the files for a specific directory
Get-ChildItem C:\Users


# Changing the current directory
Set-Location c:\Apps

# Creating a new item
#To create directory ps_test
New-Item –ItemType Directory –Path C:\ps_test -Name ps_test
#To create file ps into the folder ps_test
New-Item –ItemType File –Path C:\ps_test –Name ps.txt –Value “value in your file”
#To edit content later
Set-Content –Path C:\ps_test\ps.txt –Value “your new value”

# Viewing file information or printing it 
#To view file information
Get-Item C:\ps_test\ps.txt
#To view the content of the file in the console
Get-Content C:\ps_test\ps.txt
#To view it in an external window
Get-Content C:\ps_test\ps.txt | Out-GridView
#To print it
Get-Content C:\ps_test\ps.txt | Out-Printer

#Renaming a file or folder
Rename-Item –Path C:\ps_test –NewName ps_test222

# Copying or moving an item
#To copy
Copy-Item C:\ps_test222\ps.txt –Destination C:\ps_test
#To move
Move-Item –Path C:\ps_test222\ps2.txt –Destination C:\ps_test
#To move and rename
Move-Item –Path C:\ps_test\ps2.txt –Destination C:\ps_test222\ps3.txt

# Removing a file or directory
Remove-Item C:\ps_test\ps.txt
Remove-Item C:\ps_test

# Getting all the commands
Get-Command
Get-Command | Out-GridView
#To get command of specific type
Get-Command –CommandType function
Get-Command –CommandType alias
Get-Command –CommandType cmdlet
#To search for a command
Get-Command *search-value

#Getting help for a command 
Get-Help command-name
Get-Help Copy-Item #e.g
#To get examples
Get-Help command-name -Example
Get-Help Copy-Item -Example #e.g
Get-Help Copy-Item -Online #e.g na web, opening the browser

# Getting the list of processes and services
#For processes
Get-Process
Get-Process Notepad
#For services
Get-Service

# To stop a process
Stop-Process –Name name-of-process
Stop-Process –Name Notepad #close the notepad
# To stop a particular instance of the process and confirm
Stop-Process –Id id-of-process –Confirm -PassThru
Stop-Process –Id 34240 –Confirm  -PassThru #close the notepad by the process ID

#Get the list of Windows drivers
Get-WindowsDriver –Online –All 

# aking backup of drivers 
Export-WindowsDriver -Online -Destination path-for-backup

# Scan for malware 
Start-MpScan –ScanType QuickScan/FullScan –ScanPath directory-path-to-be-scanned
Start-MpScan –ScanType QuickScan/FullScan –ScanPath C:\ps_test222 # e.g