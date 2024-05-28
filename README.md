# dind-molecule-ansible

A container image that leverages Docker-in-Docker for executing [Molecule](https://molecule.readthedocs.io/en/latest/) tests against [Ansible](https://www.ansible.com/) roles and playbooks using Molecule's Docker driver.

`dind-ansible-molecule` allows you to execute `molecule test` from within a `dind-ansible-molecule` container and leverage the container's Docker-in-Docker support to test your roles and playbooks.

Use cases:

* you don't wanna install Python, Ansible, Molecule, etc. in local development and would prefer a containerized development environment
* you need a container image that supports Docker-in-Docker for executing `molecule test` in CI

[Testing Ansible Roles With Docker-in-Docker](http://www.mikeball.info/blog/testing-ansible-roles-with-docker-in-docker/) offers a bit more context.

## Pulling

From `hub.docker.com`:

```
docker pull clapclapexcitement/dind-ansible-molecule
```

## Building

```
make
```
