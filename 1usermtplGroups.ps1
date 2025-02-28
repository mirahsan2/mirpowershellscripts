#How to add one user to multiple groups in one shot using power shell:
# 
#CODE:
#$User = <username>
#$Groups = @("group1","group2","..."groupN")
#ForEach ($Group in $Groups) {Add-ADPrincipalGroupMembership $User -MemberOf $Group}
# 
#SYNTAX:
#
#$User = “john.doe@example.com”
#$Groups = @("Managers","System Access")
#ForEach ($Group in $Groups) {Add-ADPrincipalGroupMembership $User -MemberOf $Group}
#
#SYNTAX IMAGE EXAMPLE:
# 
#distinguishedName attribute for test account:
# 
#CN=mctestface testy,OU=Store Managers,OU=Fran Users,DC=francescas,DC=local
#
#My Code:

$User = “mir.ahsan@kiewit.com"
$Groups = @("Managers","System Access")
ForEach ($Group in $Groups) {Add-ADPrincipalGroupMembership $User -MemberOf $Group}

