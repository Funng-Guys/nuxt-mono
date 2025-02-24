# Fullstack test application
This project showcases and test the ability to automatically build, publish and deploy a modern webapp to a kubernetes cluster with minimal, human interaction.

## Structure
* `.github` - Github Actions, using our self-hosted runner.
* `deploy` - Contains k8s deployment files, this is monitored by the k8s gitops integration.
* `docker` - Contains dockerfiles/containerfiles.
* `webapp` - Contains the source code, a nuxt 3 app using bun.

## Workflow
Develop locally using the regular tooling in webapp.
```
bun install
bun run dev
```

Commit your changes to dev for general development. However, when things are getting ready for production either start a PR from dev to staging or prod. Alternatively push to those branches. This will automatically start the github action.

When the github action finishes a new image will be posted on this repo. The GitOps integration in our k8s cluster, configured under `deploy` will automatically fetch the latest image and do a rolling release.