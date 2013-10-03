Vagrant.configure('2') do |config|
  config.vm.box = 'raring'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box'
  config.vm.provider 'virtualbox' do |vb|
    vb.customize ['modifyvm', :id, '--memory', 2048]
  end
  config.vm.provision 'shell', path: 'setup.sh'
end
