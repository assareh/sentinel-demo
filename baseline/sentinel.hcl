module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
    source = "../azure/azure-functions/azure-functions.sentinel"
}

# cloud agnostic
policy "validate-variables-have-descriptions" {
    source = "./validate-variables-have-descriptions.sentinel"
    enforcement_level = "advisory"
}

####### azure
policy "enforce-mandatory-tags" {
    source = "../azure/enforce-mandatory-tags.sentinel"
    enforcement_level = "advisory"
}

# instance sizes
policy "restrict-vm-size" {
    source = "../azure/restrict-vm-size.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-app-service-to-https" {
    source = "./restrict-app-service-to-https.sentinel"
    enforcement_level = "hard-mandatory"
}

####### paste in AWS and GCP policies