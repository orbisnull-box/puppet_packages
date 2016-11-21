class orbis_packages (
  $packages = $packages::params::packages,
  $ensure              = $packages::params::ensure,
) inherits orbis_packages::params {
  validate_string($ensure)

  contain  'orbis_packages::install'
}

