# GitHub Secrets Configuration
 
## Repository-Level Secrets

We have added these secrets at the repository level:
 
1. `AZURE_TENANT_ID`

   - What: Azure AD tenant ID

   - Used for: Identifying our Azure organization
 
2. `AZURE_SUBSCRIPTION_ID`

   - What: Azure subscription ID

   - Used for: Identifying which Azure subscription to use
 
3. `AZURE_CLIENT_ID` (Reader App)

   - What: The ID of our Reader application

   - Used for: Read-only operations like Terraform plan
 
4. `ARM_ACCESS_KEY`

   - What: Storage account key

   - Used for: Accessing Terraform state files
 
## Production Environment Secret

We added this secret only to the production environment:
 
1. `AZURE_CLIENT_ID` (Contributor App)

   - What: The ID of our Contributor application

   - Used for: Write operations like Terraform apply

   - Note: This overrides the reader app ID when in production
 