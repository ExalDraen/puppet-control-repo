# Server Profile class
#
# @summary Contains component modules necessary to define the server profile.
#
# @example Declaring the class
#   include profile::server
class profile::server {
  # Note that "Core" is the LSB name of CentOS 7 so this might not work on all distros
  # cf. https://forge.puppet.com/dhoppe/fail2ban/readme
  class { 'fail2ban':
    config_file_template => 'fail2ban/Core/etc/fail2ban/jail.conf.erb',
  }
}
