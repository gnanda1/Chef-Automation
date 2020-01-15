#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.
#
#

#Installing apache package depending on the platform 'redhat'/'ubuntu'.

package 'install apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end

# service resource to enable and start httpd
service 'httpd' do
  action [:enable, :start]
end
