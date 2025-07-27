# 🚀 Common & Helpful Azure CLI (`az`) Commands

A handy reference list of the most commonly used `az` commands, organized by category.

---

## 🔐 Authentication & Subscription

```bash
az login                                     # Sign in to Azure
az logout                                    # Sign out from Azure
az account list --output table              # List all available subscriptions
az account show                              # Show the currently active subscription
az account set --subscription "<name-or-id>" # Set the active subscription
```

---

## 🏗️ Resource Management

```bash
az group list --output table                             # List all resource groups
az group create --name <group-name> --location <region>  # Create a new resource group
az group delete --name <group-name> --yes --no-wait      # Delete a resource group
az resource list --output table                          # List all resources in current subscription
```

---

## ☁️ Virtual Machines (VMs)

```bash
az vm list --output table                                        # List all VMs
az vm create --name <vm-name>   --resource-group <rg>   --image UbuntuLTS   --admin-username <user>   --generate-ssh-keys                                            # Create a new VM

az vm start --name <vm-name> --resource-group <rg>              # Start a VM
az vm stop --name <vm-name> --resource-group <rg>               # Stop a VM
az vm delete --name <vm-name> --resource-group <rg> --yes       # Delete a VM
```

---

## 🌐 Networking

```bash
az network vnet list --output table           # List virtual networks
az network nsg list --output table            # List network security groups
az network public-ip list --output table      # List public IPs
```

---

## 📦 Storage

```bash
az storage account list --output table                                         # List storage accounts
az storage account create   --name <storage-name>   --resource-group <rg>   --location <region>   --sku Standard_LRS                                                           # Create a storage account

az storage container create   --name <container-name>   --account-name <storage-name>                                               # Create a blob container

az storage blob upload   --container-name <container>   --file <local-file>   --name <blob-name>   --account-name <storage-name>                                               # Upload a file to blob
```

---

## ⚙️ App Services

```bash
az webapp list --output table                                                   # List all web apps
az webapp create   --resource-group <rg>   --plan <app-service-plan>   --name <app-name>   --runtime "DOTNET|6.0"                                                       # Create a web app

az webapp browse --name <app-name> --resource-group <rg>                       # Open the web app in browser
```

---

## 🧪 Azure DevOps (requires extension)

```bash
az extension add --name azure-devops                                          # Install Azure DevOps extension

az devops configure --defaults organization=https://dev.azure.com/<org>      # Set default organization
az devops project list                                                       # List DevOps projects
az pipelines list --project <project-name>                                   # List pipelines in a project
az repos list --project <project-name>                                       # List Git repos in a project
```

---

## 📄 General Helpers

```bash
az find "<command>"           # Show usage examples for a command
az upgrade                    # Upgrade the Azure CLI to the latest version
az extension list --output table # List installed extensions
az feedback                   # Send feedback to the Azure team
```

---

## 📝 Tips

- Use `--output table` or `--output json` for formatted outputs.
- Use `--help` with any command for inline documentation:
  ```bash
  az vm create --help
  ```

---

Need this as a downloadable `.md` file? Let me know!
