#Fix a 500 internal server error

exec { 'fix-wordpress':
    command => 'sed -i 's/phpp/php/g' /var/www/html/wp-settings.php',
    path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
