class profile::server {
  #All component modules that should be present on servers
  notify { 'Server profile':
    ensure => 'present'
  }

  class { 'fail2ban': }

}
