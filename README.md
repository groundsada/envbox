# envbox (Read-Only Volume Fix)

## Introduction

`envbox` is an image created to address a specific issue related to remounting read-only volumes, particularly when using non-orthodox volumes like CVMFS and SeaweedFS. The motivation for this fork stems from a problem encountered in a Kubernetes deployment, where the Docker codebase in Go enforced a remount for read-only volumes using an invalid command, causing compatibility issues with non-standard volumes.

The solution provided in this fork is purely written in Go and aims to rectify the remount issue for read-only volumes.

## Coder Template

The primary modification in this fork is to address the read-only volume remount issue. No additional changes are made to the Coder Template.

## Development

To contribute or further develop `envbox`, it is recommended to use a non-containerized environment (VM, personal machine, etc.). This approach is necessary to run the [integration](./integration/) test suite.

## CODER_IMAGE_PULL_SECRET Kubernetes Example

If a login is required to pull images from a private repository, follow the instructions from the [Kubernetes Documentation](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/#create-a-secret-by-providing-credentials-on-the-command-line) as such:

```bash
kubectl -n <coder namespace> create secret docker-registry regcred \
        --docker-server=<your-registry-server> \
        --docker-username=<your-name> \
        --docker-password=<your-pword> \
        --docker-email=<your-email>
```

Then reference the secret in your template as such:

```hcl
env {
  name = "CODER_IMAGE_PULL_SECRET"
  value_from {
    secret_key_ref {
      name = "regcred"
      key =  ".dockerconfigjson"
    }
  }
}
```

Please note that the primary focus of this fork is the fix for the remount issue with read-only volumes.

