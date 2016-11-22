class orbisnull_packages::install inherits orbisnull_packages {
  if $packages == undef {
    $packages = hiera_array('packages::packages')
  }
  package { $packages:
    ensure => $ensure,
  }
}
