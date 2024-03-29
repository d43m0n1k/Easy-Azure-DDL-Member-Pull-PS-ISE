# Replace 'DDistro01' with Actual name of dynamic distribution group
$members = Get-DynamicDistributionGroupMember -Identity 'DDistro01'

# Check if members were retrieved successfully
if ($members) {
    # Process each member
    $memberInfo = $members | ForEach-Object {
        # Retrieve additional information for the member including display name
        $additionalInfo = Get-User -Identity $_.PrimarySmtpAddress -ErrorAction SilentlyContinue

        # Output a custom object with original name, first name, last name, display name, and primary SMTP address
        [PSCustomObject]@{
            OriginalName    = $_.Name
            FirstName       = $additionalInfo.FirstName
            LastName        = $additionalInfo.LastName
            DisplayName     = $additionalInfo.DisplayName
            PrimarySmtp     = $_.PrimarySmtpAddress
        }
    }

    # Export member information to CSV
    $memberInfo | Export-Csv -Path "C:\Users\Public\Documents\MemberList.csv" -NoTypeInformation
} else {
    Write-Error "No members found for the dynamic distribution group."
}