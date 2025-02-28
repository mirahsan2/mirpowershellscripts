#CODE:
# 
#Connect-azuerad
# 
#get-azureaduser -objectid “USERSEMAIL”
# 
#set-azureaduser -objectid “USERSEMAIL” -userprincipalname “NEWEMAIL”
# 
#get-azureaduser -objectid “NEWEMAIL”
#
#SYNTAX:
# 
#Connect-azuerad
# 
#get-azureaduser -objectid “john.doe[at]example.com”
# 
#set-azureaduser -objectid “john.doe[at]example.com” -userprincipalname “john.smith[at]example.com”
# 
#[WE ARE RUNNING GET AGAIN AT THE BOTTOM TO CONFIRM THEIR CHANGED EMAIL ADDRESS IS CORRECT OR NOT]
# 
#get-azureaduser -objectid “john.smith[at]example.com”
#
#IMAGE EXAMPLE:
#
#My Code:








