# == Class: xvfb
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class xvfb (
  $package = $::xvfb::params::package,
) inherits ::xvfb::params {

  # validate parameters here

  class { '::xvfb::install': } ->
    Class['::xvfb']
}
