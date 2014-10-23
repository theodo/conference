[![Stories in Ready](https://badge.waffle.io/theodo/conference.png?label=ready&title=Ready)](https://waffle.io/theodo/conference)
# Conference

[![Build Status](https://travis-ci.org/theodo/conference.svg)](https://travis-ci.org/theodo/conference)

## Provisioning

### Install ansible roles

ansible-galaxy install -r provisioning/requirements.txt --force

### Prod

ansible-playbook -i provisioning/hosts/prod provisioning/playbook.yml

## Ressorce

Template : https://github.com/IronSummitMedia/startbootstrap/tree/gh-pages/templates/agency

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
