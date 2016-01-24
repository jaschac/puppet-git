# Install the dependencies required to setup Git
class git::install {
  package{ 'git' :
    ensure => $::git::package_ensure,
    tag    => 'git'
  }
}
