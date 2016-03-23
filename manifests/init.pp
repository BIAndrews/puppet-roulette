# Class: roulette
# ===========================
#
# Creats a script that does one thing on hit and another thing on miss.
#
# Parameters
# ----------
#
# * `hit` string
#   Shell command to run on hit.
#
# * `miss` string
#   Shell command to run on miss.
#
# * `owner` string
#   Script user ownership.
#
# * `group` string
#   Script group ownership.
#
# * `mode` int
#   Mode of the script, must have exec rights to run.
#
# * `filename` string
#   File name of the script to save.
#
# * `chance` int
#   Chance is the 1:X possibility of a hit.
#

class roulette (
  $hit      = $::roulette::params::hit,
  $miss     = $::roulette::params::miss,
  $owner    = $::roulette::params::owner,
  $group    = $::roulette::params::group,
  $mode     = $::roulette::params::mode,
  $filename = $::roulette::params::filename,
  $chance   = $::roulette::params::chance,
) inherits ::roulette::params {

  validate_string($hit)
  validate_string($miss)
  validate_string($owner)
  validate_string($group)
  validate_integer($mode)
  validate_string($filename)
  validate_integer($chance)

  file { $::roulette::filename:
    owner   => $::roulette::owner,
    group   => $::roulette::group,
    mode    => $::roulette::mode,
    content => template('roulette/puppet_roulette.sh.erb'),
  }

}
