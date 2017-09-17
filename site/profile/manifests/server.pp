# Server Profile class
#
# @summary Contains component modules necessary to define the server profile.
#
# @example Declaring the class
#   include profile::server
# @param fail2ban_jail List of fail2ban jails to enable on this server
class profile::server (
  Array[String] $fail2ban_jails = ['sshd', 'sshd-ddos'],
) {
  # Note that "Core" is the LSB name of CentOS 7 so this might not work on all distros
  # cf. https://forge.puppet.com/dhoppe/fail2ban/readme
  class { 'fail2ban':
    config_file_template => 'fail2ban/Core/etc/fail2ban/jail.conf.erb',
    jails => $fail2ban_jails,
  }
}
