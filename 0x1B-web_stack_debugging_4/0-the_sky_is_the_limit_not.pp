# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin'],  # Use an array for the path
  onlyif  => 'test $(ulimit -n) -lt 4096',  # Check if change is needed
} -> exec { 'nginx-restart':
  command => 'service nginx restart',  # Use 'service' to restart Nginx
  path    => '/usr/sbin/:/usr/bin/:/sbin/:/bin/',  # Add necessary paths
  require => Exec['fix--for-nginx'],  # Make sure the first exec runs first
}
