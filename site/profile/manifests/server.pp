class profile::server {
  #All component modules that should be present on servers
  notify { 'server notify':
    message => 'Using the server profile'
  }

  class { 'fail2ban': }

}
