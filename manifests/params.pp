# == Class roulette::params
#
# This class is meant to be called from roulette.
# It sets variables.
#
class roulette::params {

  $hit      = 'echo "Hit"'
  $miss     = 'echo "Miss"'
  $owner    = 'root'
  $group    = 'root'
  $mode     = '0755'
  $chance   = '6'
  $filename = '/etc/profile.d/puppet_roulette.sh'

}
