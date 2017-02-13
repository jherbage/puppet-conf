$module_stdlib = 'jfryman-nginx'
  exec { 'puppet_module_nginx':
    command => "puppet module install ${module_stdlib}",
    unless  => "puppet module list | grep ${module_stdlib}",
    path    => ['/bin', '/usr/bin']
}

class{"nginx": }
