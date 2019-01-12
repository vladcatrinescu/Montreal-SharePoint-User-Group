New-UnifiedGroup -DisplayName "MTLSPUG-ReorgPrivate" `
	-Alias "O365Group-MTLSPUG-ReorgPrivate" `
	-EmailAddresses "MTLSPUG-ReorgPrivate@globomantics.org" `
	-AccessType Private `
	-HiddenGroupMembershipEnabled

Set-UnifiedGroup -Identity "O365Group-MTLSPUG-ReorgPrivate" -HiddenFromAddressListsEnabled $true
