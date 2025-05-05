
# Connect to Exchange Online (Modern Auth)
Connect-ExchangeOnline -UserPrincipalName admin@yourdomain.com

# Define variables
$DLName = "DL-SLC-IT"
$RecipientFilter = "(Department -eq 'IT') -and (Office -eq 'Salt Lake City')"

# Create the Dynamic Distribution Group
New-DynamicDistributionGroup -Name $DLName -RecipientFilter $RecipientFilter

# Confirm creation
Get-DynamicDistributionGroup -Identity $DLName | Format-List Name,RecipientFilter
