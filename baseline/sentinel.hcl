module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfrun-functions" {
    source = "../common-functions/tfrun-functions/tfrun-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "aws-functions" {
    source = "../aws/aws-functions/aws-functions.sentinel"
}

module "azure-functions" {
    source = "../azure/azure-functions/azure-functions.sentinel"
}

####### cloud agnostic
policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-and-percentage-increase.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "validate-variables-have-descriptions" {
    source = "./validate-variables-have-descriptions.sentinel"
    enforcement_level = "advisory"
}

####### aws
policy "restrict-s3-bucket-policies" {
  source = "../aws/restrict-s3-bucket-policies.sentinel"
  enforcement_level = "hard-mandatory"
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
    source = "../azure/restrict-app-service-to-https.sentinel"
    enforcement_level = "hard-mandatory"
}
