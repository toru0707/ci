#
# Cookbook Name:: locale-jp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

lang = "ja_JP.UTF-8"
lc_all = "ja_JP.UTF-8"

if platform?("ubuntu", "debian")

  package "locales" do
    action :install
  end
  
  execute "Add locale" do
    command "locale-gen #{lc_all}"
  end

  execute "Update locale" do
    command "update-locale LANG=#{lang} LC_ALL=#{lc_all}"
    #not_if { Locale.up_to_date?("/etc/default/locale", lang, lc_all) }
  end
end
