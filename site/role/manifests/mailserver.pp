# Mail server class
#
# @summary Contains all the profile needed to define the mailserver role
#
# @example Declaring the class
#   include role::mailserver
class role::mailserver {
  #This role would be made of all the profiles that need to be included to make a mailserver work
  #All roles should include the base profile
  include profile::base
  include profile::server
}
