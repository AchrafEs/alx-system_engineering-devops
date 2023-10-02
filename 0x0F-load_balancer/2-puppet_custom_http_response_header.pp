# 2-puppet_custom_http_response_header.pp

# Install Nginx
package { 'nginx':
  ensure => 'installed',
}

# Configure Nginx with custom HTTP header
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => template('your_module/nginx_config.erb'), # You need to create a template file for Nginx configuration
  notify  => Service['nginx'],
}

# Enable the default site (symbolic link)
file { '/etc/nginx/sites-enabled/default':
  ensure => 'link',
  target => '/etc/nginx/sites-available/default',
  require => File['/etc/nginx/sites-available/default'],
  notify  => Service['nginx'],
}

# Create an Nginx custom configuration template
file { '/etc/puppet/modules/your_module/templates/nginx_config.erb':
  ensure  => present,
  content => "# Nginx custom configuration\n
              server {\n
                listen 80 default_server;\n
                listen [::]:80 default_server;\n
                add_header X-Served-By $::hostname;\n
                root /var/www/html;\n
                index index.html index.htm;\n
              }",
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => File['/etc/nginx/sites-enabled/default'],
}
