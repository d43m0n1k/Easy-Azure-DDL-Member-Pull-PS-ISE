Azure/Exchange Online PowerShell Script - Dynamic Distribution Group Member Retrieval

This PowerShell script is designed to retrieve members of a dynamic distribution group in Azure or Exchange Online and export their information to a CSV file. Below are the instructions and details on how to use this script effectively.
Prerequisites

    Ensure you have the required permissions to run PowerShell commands against Azure or Exchange Online.
    Install the Azure PowerShell module or Exchange Online PowerShell module if not already installed.
    Make sure you have connected to Azure or Exchange Online using Connect-AzureAD or Connect-ExchangeOnline.

Usage

    Replace 'DDistro01' in the script with the actual name of the dynamic distribution group you want to retrieve members from.
    Run the script in an Elevvated PowerShell environment.

Script Explanation

    The script starts by retrieving members of the specified dynamic distribution group.
    It then checks if members were successfully retrieved.
    For each member, it fetches additional information including display name.
    Information such as original name, first name, last name, display name, and primary SMTP address is compiled into a custom object.
    Finally, the member information is exported to a CSV file located at C:\Users\Public\Documents\MemberList.csv.

Variables

    $members: Stores the members retrieved from the dynamic distribution group.
    $memberInfo: Stores additional information for each member and compiles it into a custom object.

Error Handling

    If no members are found for the dynamic distribution group, an error message will be displayed.

Additional Notes

    Ensure the script is run from a PowerShell environment with the necessary permissions and modules installed.
    Customize the export path and filename ("C:\Users\Public\Documents\MemberList.csv") as per your preference.

Feel free to modify and enhance this script according to your specific requirements. If you encounter any issues or have suggestions for improvement, please don't hesitate to open an issue or contribute to the repository.
