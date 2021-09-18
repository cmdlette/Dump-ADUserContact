# Ensure the AD Module is imported
Import-Module ActiveDirectory

# Set the file variable; note that because of the Export-Csv cmdlet that it must be a .csv file
$file = ("\\filepath\filename.csv")

# Change: Filter comparison and property; Searchbase; Sort-Object property
# When adding/removing properties, be sure to update the array in both the Get-ADUser and Select-Object sections 
Get-ADUser -Filter 'description -like "foo*"' -Searchbase "OU=Users,DC=bar,DC=foo" -Properties samaccountname,description,emailaddress,telephonenumber | Select-Object -Property samaccountname,description,emailaddress,telephonenumber | Sort-Object -Property description | Export-Csv $file -NoTypeInformation

# Remove extraneous quotation marks from the original output
# The extra quotes break the csv's readability in MS Excel and LibreOffice Calc
(Get-Content $file) | Foreach-Object { $_ -replace '"', ''} | Out-File -Encoding ASCII $file -Force
