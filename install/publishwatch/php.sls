php-repo:
  cmd.run:
    - names:
      - yum -y localinstall https://mirror.tuna.tsinghua.edu.cn/remi/enterprise/remi-release-7.rpm
php74-install:
  pkg.installed:
    - names:
      - php74-php-fpm
      - php74-php-cli
      - php74-php-bcmath
      - php74-php-gd
      - php74-php-json
      - php74-php-mbstring
      - php74-php-mysqlnd
      - php74-php-opcache
      - php74-php-pdo
      - php74-php-pecl-crypto
      - php74-php-pecl-mcrypt
      - php74-php-pecl-geoip
      - php74-php-pecl-recode
      - php74-php-snmp
      - php74-php-soap
      - php74-php-xml
      - php74-php-pecl-mongodb
      - php74-php-pecl-redis5
      - php74-php-process
      - php74-php-pecl-event
      - php74-php-pecl-igbinary
    - require:
      - cmd: php-repo
php-ini-config:
  file.managed:
    - name: /etc/opt/remi/php74/php.ini
    - source: salt://dev/install/publishwatch/config/php/php.ini
    - require:
      - pkg: php74-install
php-www-config:
  file.managed:
    - name: /etc/opt/remi/php74/php-fpm.d/www.conf
    - source: salt://dev/install/publishwatch/config/php/www.conf
      - require:
        - pkg: php74-install
php-fpm-config:
   file.managed:
     - name: /etc/opt/remi/php74/php-fpm.conf
     - source: salt://dev/install/publishwatch/config/php/php-fpm.conf
     - require:
       - pkg: php74-install
mkdir-php-log:
  file.directory:
    - names: 
      - /data/logs/php-fpm/
      - /data/php/
    - mode: 755
    - makedirs: True
server-run:
  service.running:
    - name: php74-php-fpm
    - enable: Ture    
    - require:
      - file: php-ini-config
      - file: php-www-config
      - file: php-fpm-config
      - file: mkdir-php-log
    

