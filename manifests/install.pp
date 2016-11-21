class orbis_packages::install inherits orbis_packages {
  if $packages == undef {
    $packages = hiera_array('packages::packages')
  }
  package { $packages:
    ensure => $ensure,
  }
}
