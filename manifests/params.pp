# == Class xvfb::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class xvfb::params {

  case $::osfamily {
    'Debian': {
      $package = "xvfb"
    }
    'RedHat', 'Amazon': {
      $package_name = 'nil'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
