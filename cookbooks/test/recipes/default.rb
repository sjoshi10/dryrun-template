#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#remote_file '/home' do
#        source 'http://pkg.jenkins-ci.org/redhat/jenkins.repo'
#        action :create_if_missing
#		notifies :install, "yum_package[jenkins]"
#end

# Install Jenkins #
#yum_package 'jenkins' do
#		version '1.575-1.1'
#        options '--nogpgcheck'
#		flush_cache [:before]
#		action :nothing
		#notifies :run, "ruby_block[change_jenkins_user]"
		#notifies :run, "bash[jenkins_folder_permissions]"
#end

bash 'jenkins_folder_permissions' do
		code <<-EOH
		cd /home/vagrant
		rvm use 2.1.2
		gem install sinatra
		gem install thin
		gem install aws-sdk
		EOH
end

#cookbook_file 'test' do
#        source 'test'
#        action :create_if_missing
#		notifies :run, "bash[unzip_maven]"
#end

#remote_file '/home/vagrant' do
#        source 'http://pkg.jenkins-ci.org/redhat/jenkins.repo'
#        action :create_if_missing
	#	notifies :install, "yum_package[jenkins]"
#end
