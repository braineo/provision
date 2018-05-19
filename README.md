# Auto deploy my dev env to a dev machine

## Usage

```sh
ansible-playbook -l <remote> playbooks/master.yml
```

## Debug

Add tags `debug` to specific tasks

```sh
ansible-playbook -l <remote> playbooks/master.yml -t debug
```

## Notes

Warning "root" does not have permission to access the dev dir for `tldr` and `pure-prompt`
Only need to do this on Linux

``` sh
sudo npm install --unsafe-perm --verbose -g tldr
```
