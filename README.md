<h1 align="center">terraform</h1>

<div align="center">

Terraform resources template 🌎

[![Lint](https://github.com/quickplates/terraform/actions/workflows/lint.yaml/badge.svg)](https://github.com/quickplates/terraform/actions/workflows/lint.yaml)
[![Test](https://github.com/quickplates/terraform/actions/workflows/test.yaml/badge.svg)](https://github.com/quickplates/terraform/actions/workflows/test.yaml)
[![Example](https://github.com/quickplates/terraform/actions/workflows/example.yaml/badge.svg)](https://github.com/quickplates/terraform/actions/workflows/example.yaml)

</div>

---

## 💡 About

This repository contains a [`copier`](https://copier.readthedocs.io) template
that can be used to create [`Terraform`](https://www.terraform.io) resources.

You can view the example of project generated from this template
[**here**](https://github.com/quickplates/terraform-example).

## 📜 Usage

To create a new project from this template in the current directory,
make sure you have [`copier`](https://copier.readthedocs.io) installed and run:

```sh
copier copy gh:quickplates/terraform .
```

## 🚀 Features

- fully reproducible development environments with
  [`Dev Containers`](https://code.visualstudio.com/docs/remote/containers)
  and [`Nix`](https://nixos.org)
- automatic environment activation with [`direnv`](https://direnv.net)
- running tasks with [`Task`](https://taskfile.dev)
- formatting and linting with [`Trunk`](https://trunk.io)
- continuous integration with [`GitHub Actions`](https://github.com/features/actions)
- easy to write and nice looking documentation
  with [`Docusaurus`](https://docusaurus.io)
- secrets management with [`SOPS`](https://github.com/getsops/sops)
- integration with [`GitHub Environments`](https://docs.github.com/actions/deployment/targeting-different-environments)

## 💻 Development

Read more about how to develop the project
[here](https://github.com/quickplates/terraform/blob/main/CONTRIBUTING.md).

If you have any ideas on how to improve this template,
please open an issue or submit a pull request.
All contributions are welcome! 🤗
