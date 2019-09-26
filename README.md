# nephelaiio.playbooks-metabase

[![Build Status](https://travis-ci.org/nephelaiio/ansible-playbooks-metabase.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-playbooks-metabase)

Ansible playbook to install [https://theforeman.org](The Foreman)

## Playbook descriptions

The following lists the group targets and descriptions for every playbook

| playbook   | description           | target         |
| ---        | ---                   | ---            |
| server.yml | deploy foreman server | foreman_server |

## Playbook variables

The following parameters are available/required for playbook invocation

### [server.yml](server.yml):
| required | variable                       | description                            | default                              |
| ---      | ---                            | ---                                    | ---                                  |


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
