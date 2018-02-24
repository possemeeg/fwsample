# Installing MySql

In this directory:
```
ansible-galaxy install -r requirements.yml
```

With a hosts file. Eg:
``` yaml
---
# hosts.yml
database:
    hosts:
        database1:
            ansible_host: vag_db1

```

Run the command:
```
ansible-playbook -i hosts.yml db-pb.yml
```
