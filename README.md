# nephelaiio.playbooks-foreman

[![Build Status](https://travis-ci.org/nephelaiio/ansible-playbooks-foreman.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-playbooks-foreman)

Ansible playbook to install [https://theforeman.org](The Foreman)

## Playbook descriptions

The following lists the group targets and descriptions for every playbook

| playbook      | description                                        | target                |
| ---           | ---                                                | ---                   |
| server.yml    | install foreman server                             | foreman_server        |
| proxy.yml     | install foreman proxy                              | foreman_proxy         |
| configure.yml | configure foreman                                  | foreman_server        |
| external.yml  | register external puppet clients to foreman server | foreman_external_host |

## Conventions

[server.yml](server.yml) will:
* Install foreman server
* Reset admin password
* Configure ldap authentication

[proxy.yml](proxy.yml) will:
* Install foreman proxy
* Register its own local network with foreman server
* Register its own domain with foreman server
* Will install and manage dhcp for its local network
* Will install and manage tftp
* Will defer dns record management to powerdns master server

## Playbook variables

The following parameters are available/required for playbook invocation

### [server.yml](server.yml):
| required | variable                 | description                    | default |
| ---      | ---                      | ---                            | ---     |
| *yes*    | foreman_admin_pass       | Foreman administrator password | n/a     |
| no       | foreman_ldap_domain      | Authentication domain          | n/a     |
| no       | foreman_ldap_admin_group | Administrator group from LDAP  | n/a     |
| no       | foreman_ldap_users_group | Users group from LDAP          | n/a     |

## Dependencies

This playbook has the following git submodule dependencies:

* [https://github.com/dw/mitogen](plugins/mitogen)

## Example Invocation

```
git checkout https://galaxy.ansible.com/nephelaiio/ansible-playbooks-foreman foreman
ansible-playbook -i inventory/ foreman/server.yml
```

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
