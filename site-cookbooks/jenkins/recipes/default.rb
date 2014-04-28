#
# Cookbook Name:: jenkins-app
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "jenkins" do
  action :install
end

service "jenkins" do
  action [:start]
end
