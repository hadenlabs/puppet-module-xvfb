# == Class xvfb::install
#
# This class is called from module for install.
#
class xvfb::install {

  package { $::xvfb::package_name:
    ensure => installed,
  }

}
