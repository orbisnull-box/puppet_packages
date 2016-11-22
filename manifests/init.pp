class orbisnull_packages (
  $packages = $packages::params::packages,
  $ensure              = $packages::params::ensure,
) inherits orbisnull_packages::params {
  validate_string($ensure)

  contain  'orbisnull_packages::install'
}

