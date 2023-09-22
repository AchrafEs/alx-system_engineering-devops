#the code will create a file in the directory /tmp.
file { '/tmp/school':
  ensure  => 'file',
  content => 'I love Puppet',
  mode    => '0774',
  owner   => 'www-data',
  group   => 'www-data',
}
