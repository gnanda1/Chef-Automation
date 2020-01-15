user 'apache' do
  comment 'apache user'
  uid 101
  action :create
  home '/home/apache'
  shell '/bin/bash'
end


group 'Apache Group'  do
 action :create
 group_name 'apache'
end
