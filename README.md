# Auto deploy my dev env to a dev machine

## Usage

```sh
ansible-playbook -l <remote> playbooks/vanilla.yml
```

## Debug

Add tags `debug` to specific tasks

```sh
ansible-playbook -l <remote> playbooks/vanilla.yml -t debug
```
