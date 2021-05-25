# sample repo - github provider (gh repo) 

## Intro

This manual is dedicated to create github repository using terraform code 

Tested on Mac OS X.

## Requirements

- Hashicorp terraform recent version installed
[Terraform installation manual](https://learn.hashicorp.com/tutorials/terraform/install-cli)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

- GitHub account and API token
[Creating a personal access token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token)

## Preparation 
- Clone git repository. 

```bash
git clone https://github.com/antonakv/ob-tf-github.git
```

Expected command output looks like this:

```bash
Cloning into 'tf-ob-github'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (12/12), done.
Resolving deltas: 100% (1/1), done.
```

- Change folder to tf-ob-github

```bash
cd tf-ob-github
```

- Create file `secret.tfvars'

```bash
echo "github_token = \"put_your_github_token_here\"" > secret.auto.tfvars
```

Expected command output:
```bash
echo "github_token = \"put_your_github_token_here\"" > secret.auto.tfvars
$ 
```

## Run terraform code

- In the same folder you were before run init

```bash
terraform init
```

Sample result

```bash
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/github...
- Installing hashicorp/github v4.9.4...
- Installed hashicorp/github v4.9.4 (self-signed, key ID 34365D9472D7468F)

Partner and community providers are signed by their developers.
If you d like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.


Warning: Additional provider information from registry

The remote registry returned warnings for
registry.terraform.io/hashicorp/github:
- For users on Terraform 0.13 or greater, this provider has moved to
integrations/github. Please update your source in required_providers.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- In the same folder you were before apply terraform code

```bash
terraform apply
```

Sample result

```bash
$ terraform apply                     

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.testrepo-tf will be created
  + resource "github_repository" "testrepo-tf" {
      + allow_merge_commit     = true
      + allow_rebase_merge     = true
      + allow_squash_merge     = true
      + archived               = false
      + default_branch         = (known after apply)
      + delete_branch_on_merge = false
      + description            = "My test repo"
      + etag                   = (known after apply)
      + full_name              = (known after apply)
      + git_clone_url          = (known after apply)
      + html_url               = (known after apply)
      + http_clone_url         = (known after apply)
      + id                     = (known after apply)
      + name                   = "testrepo-tf"
      + node_id                = (known after apply)
      + private                = (known after apply)
      + repo_id                = (known after apply)
      + ssh_clone_url          = (known after apply)
      + svn_url                = (known after apply)
      + visibility             = "public"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

github_repository.testrepo-tf: Creating...
github_repository.testrepo-tf: Creation complete after 6s [id=testrepo-tf]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
