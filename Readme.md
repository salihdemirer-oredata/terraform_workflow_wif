# GitHub Actions Terraform Workflow Example

This documentation focuses on the workflow aspect. The creation of GCP resources is straightforward, and the purpose of these resources is for testing.

The workflow file is a modified version of the [Fast Fabric Terraform Workflow](httphttps://github.com/GoogleCloudPlatform/cloud-foundation-fabric/blob/master/fast/stages/0-bootstrap/templates/workflow-github.yaml:// "Fast Fabric Terraform Workflow") file.

The workflow will listen for changes on the main branch. Jobs will be triggered by pull_request events with types "opened" and "closed."

Two GitHub Environment variables are utilized in the workflow. Before triggering the workflow, follow the instructions below to create a GCP Workload Identity Federation Pool and Provider, and set up the GitHub Environment Variables:

- **WIF_PROVIDER**: Use the full path of the Workload Identity Federation Provider.
	- Example: `"projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/POOL_ID/providers/PROVIDER"`

- **SERVICE_ACCOUNT**: Service account email address

- **TF_VERSION**: Terraform version

The Terraform apply command will be executed only when the pull request is merged.
