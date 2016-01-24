# This class holds the git parameters
class git::params
  (
    Enum[
      'absent',
      'held',
      'installed',
      'latest',
      'present',
      'purged'] $package_ensure = 'installed'
){
}
