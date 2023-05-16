## Conectar no Azure
Connect-AzAccount

# Criar grupo de recursos
New-AzResourceGroup -Name "rg-aks-pws" -Location "East us"

# Criar AKS
New-AzAksCluster -ResourceGroupName "rg-aks-pws" -Name "new-aks" -NodeCount 1 -GenerateSshKey -WorkspaceResourceId mello
New-AzAksCluster -ResourceGroupName "rg-aks-pws" -Name myAKSCluster -NodeCount 1 -GenerateSshKey -WorkspaceResourceId mello