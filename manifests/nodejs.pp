$module = 'puppet-nodejs'
  exec { 'puppet_module_nodejs':
    command => "puppet module install ${module}",
    unless  => "puppet module list | grep ${module}",
    path    => ['/bin', '/usr/bin']
}
