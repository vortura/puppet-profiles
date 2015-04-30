class profiles::ntp::client {

  $servers = hiera('ntp::servers')

  class { '::ntp':
    servers       => $servers,
    iburst_enable => true,
  }

}
