# == Class xvfb::service
#
# This class is meant to be called from module.
# It ensure the service is running.
#
class xvfb::service {

  service { $::xvfb::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
