yum-repo:
  cmd.run:
    - names:
      - curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
      - curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
      - yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
