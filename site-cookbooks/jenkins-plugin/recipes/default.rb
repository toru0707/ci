#
# Cookbook Name:: jenkins-plugin
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'jenkins::master'

jenkins_plugin 'git'
jenkins_plugin 'build-pipeline-plugin'
jenkins_plugin 'ircbot'

#gitlabのwebhookをトリガとしてjobを実行可能
jenkins_plugin 'gitlab-hook'

#静的解析
jenkins_plugin 'pmd'
jenkins_plugin 'cobertura'
jenkins_plugin 'checkstyle'

#コンソールへ色付け
jenkins_plugin 'ansicolor'

#正常なjobの色を緑に
jenkins_plugin 'greenballs'

#jobの設定変更のDiffが見れる
jenkins_plugin 'jobConfigHistory'
