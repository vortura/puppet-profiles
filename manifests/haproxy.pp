class profiles::haproxy {

  $my_haproxy_listeners = hiera('haproxy::listeners', {})
  create_resources('haproxy::listen', $my_haproxy_listeners)

  $my_haproxy_balancermembers = hiera('haproxy::balancermembers', {})
  create_resources('haproxy::balancermember', $my_haproxy_balancermembers)

}
