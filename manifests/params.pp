# == Class xvfb::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class xvfb::params {

  case $::osfamily {
    'Debian': {
      $package_name = "xvfb"
    }
    'RedHat', 'Amazon': {
      $package_name = 'xorg-X11-server-Xvfb'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
