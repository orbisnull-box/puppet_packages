class orbisnull_packages::install inherits orbisnull_packages {
  
  $packages_hiera = hiera_array('orbisnull_packages::packages', [])
  if $packages != undef {
    $packages_full=concat($packages_hiera, $packages)
  } 
  else {
    $packages_full = $packages_hiera
  }
  $packages_install = unique($packages_full)
  notify{"packages: ${packages_install}":}
  package { $packages_install:
    ensure => $ensure,
  }
}
