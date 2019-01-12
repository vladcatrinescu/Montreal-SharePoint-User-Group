

$User = Get-AzureADUser -ObjectId Ben@globomantics.org

$Sku = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
#Get-AzureADSubscribedSku
$Sku.SkuId = "6fd2c87f-b296-42f0-b197-1e91e994b900"

#Get-AzureADSubscribedSku -ObjectId fa17dd8f-73cb-4300-9dfd-265b06fd8901_6fd2c87f-b296-42f0-b197-1e91e994b900 | Select-Object -ExpandProperty ServicePlans

$Sku.DisabledPlans = @("7547a3fe-08ee-4ccb-b430-5077c5041653","2789c901-c14e-48ab-a76a-be334d9d793a")


$Licenses = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses

$Licenses.AddLicenses = $Sku

Set-AzureADUserLicense -ObjectId $User.ObjectId -AssignedLicenses $Licenses

