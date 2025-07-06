#Terraform-Github Integration#
A)Configure terraform cloud to provision resource for every push in github
-signup/sign-in to terraform cloud
-create organization
-create workspace
-choose version control system VCS
-choose github repo
-configure variables
*set normal variables in variables.tf
*For access and secrets access key, use terraform cloud env variables (variables->add variable->environmental)
-run->comfirm & apply->add comment->confirm plan

B)create terraform config files
*ensure to add terraform cloud organization and workspace to the terraform block
*for remote backend, u can configure s3 as usual

=>NB;
For VCS-Driven Workspaces in Terraform Cloud
VCS workspaces by default supports triggers only for terraform plan not auto-apply by default.

=>To Enable Auto-Deploy (Auto-Apply)
Go to your Terraform Cloud workspace.
"Settings" > "General" > "auto-apply" > "check boxed" > "Save"
Under "Apply Method", select "Auto apply".
Save changes.

=>Destroy resource
-workspace->settings->Destruction and Deletion->Destroy infrastructure(enable)->Queue destroy plan -> confirm & apply
