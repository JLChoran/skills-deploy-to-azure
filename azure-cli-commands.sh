# See what subscription you are currently using.
az account show

# Get a list of available subscriptions.
az account list --output table

# If the subscription you are seeking is not in the list
#   close and reopen your terminal window,
#   or logout and then sign in again.
az logout
az login

# You can also clear your cache to refresh the
#    available subscription list
az account clear
az login

# Did your available subscription list change?
az account list --output table

# If the subscription you are seeking is still not in the list,
#    contact your system administrator. You cannot change your
#    subscription to an ID that is not in the list.

# If the subscription you are seeking is now in the list,
#   change your subscription.
az account set --subscription 00000000-0000-0000-0000-00000000000
