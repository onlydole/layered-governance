# Layered Governance

> Layered Governance for your Infrastructure with Kubernetes, OPA, and Terraform

## Table of Contents

- [Layered Governance](#layered-governance)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Additional Reading](#additional-reading)
  - [Terraform](#terraform)
  - [Open Policy Agent](#open-policy-agent)
  - [Flux](#flux)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

To use the code in this repository, you will need the following applications:

- [HashiCorp Terraform](https://www.terraform.io/downloads.html) `0.14.5` (or later)
- [KIND](https://kind.sigs.k8s.io/) `0.10.0` (or later)

Once you have KIND installed and the repository downloaded, you can run the following command to start up your local Kubernetes cluster.

```bash
kind create cluster --config cluster.yaml
```

## Additional Reading

### Terraform

- Terraform Remote State: [learn.hashicorp.com/tutorials/terraform/azure-remote](https://learn.hashicorp.com/tutorials/terraform/azure-remote?in=terraform/azure-get-started)
- Managing Kubernetes resources: [learn.hashicorp.com/tutorials/terraform/kubernetes-provider](https://learn.hashicorp.com/tutorials/terraform/kubernetes-provider?in=terraform/kubernetes)

### Open Policy Agent

The [Open Policy Agent](https://www.openpolicyagent.org/docs/latest/) (OPA, pronounced “oh-pa”) is an open source, general-purpose policy engine that unifies policy enforcement across the stack. OPA provides a high-level declarative language that lets you specify policy as code and simple APIs to offload policy decision-making from your software. You can use OPA to enforce policies in microservices, Kubernetes, CI/CD pipelines, API gateways, and more.

- [Example of Terraform Policy Enforcement with OPA](https://www.openpolicyagent.org/docs/latest/terraform/)

### Flux

[Flux](https://fluxcd.io/) is a tool for keeping Kubernetes clusters in sync with sources of configuration (like Git repositories), and automating updates to configuration when there is new code to deploy.

- [Flux Provider for Terraform](https://registry.terraform.io/providers/fluxcd/flux/latest)

## Author Information

This repository is maintained by [Taylor Dolezal](https://github.com/onlydole).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
