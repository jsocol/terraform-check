# Terraform Check

This container is intended to be used as a GitHub Actions job. It runs two
commands:

```sh
terraform fmt -check -recursive -diff
terraform validate
```

To use it, download and run the image from a workflow, e.g.:

```yaml
jobs:
  ci:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/jsocol/terraform-check:latest
      credentials:
        username: ${{ github.actor }}
        password: ${{ secrets.github_token }}
      volumes:
        - .:/data
```
