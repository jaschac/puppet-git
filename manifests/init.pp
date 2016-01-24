# Defines Git
class git
  (
) inherits ::git::params {
    contain ::git::install
    contain ::git::config
    contain ::git::service
}
