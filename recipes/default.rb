execute "elasticsearch_install" do
  command 'wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo a  pt-key add -'
  command "echo "deb http://packages.elastic.co/elasticsearch/#{node['elastic']['version']}/debian stable   main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-#{node['elast  ic']['version']}.list"
  command 'sudo apt-get update'
  command 'sudo apt-get -y install elasticsearch'
end
