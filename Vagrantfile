ENV["VAGRANT_EXPERIMENTAL"] = "disks"

Vagrant.configure("2") do |config|

    config.vm.define "vmhw" do |vmhw|

        vmhw.vm.hostname = "pdvmsix"
        vmhw.vm.box = "generic/ubuntu2204"
        vmhw.vm.network "forwarded_port", guest: 80, host: 8888

        config.vm.disk :disk, size: "400MB", name: "disk_1"
        config.vm.disk :disk, size: "400MB", name: "disk_2"
        config.vm.disk :disk, size: "400MB", name: "disk_3"
        config.vm.disk :disk, size: "400MB", name: "disk_4"

        vmhw.vm.provider "virtualbox" do |vb|
            vb.name = "vmhw"
            vb.gui = false
            vb.memory = "1024"
        end

        config.vm.provision "shell", run: "always", path: "script.sh"
    end
end