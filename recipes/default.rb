#
# Cookbook Name:: mingw64
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_batch 'unzip mingw64' do
  code <<-EOH
    IF EXIST #{node['mingw64']['out_path']} GOTO EXIT
    7z.exe x #{node['mingw64']['zip_path']} -o#{node['mingw64']['out_path']} -r -y
    :EXIT
  EOH
end

windows_path File.join(node['mingw64']['out_path'], '/mingw32/bin').gsub('/','\\') do
  action :add
end