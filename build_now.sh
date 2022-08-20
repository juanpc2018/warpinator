#
# install script for Ubuntu 22.04.01 LTS 
sudo apt-get install python3-grpc-tools python3-grpcio
git clone https://github.com/linuxmint/warpinator.git
cd warpinator

# /* Optional: Check other version, or skip to build current source.
# /* $ git checkout 1.2.3

sudo apt-get -y install debhelper dh-python gnome-pkg-tools meson gobject-introspection appstream python3-grpc-tools
dpkg-buildpackage --no-sign
cd ..
sudo apt-get -y install gir1.2-xapp-1.0 python3-setproctitle python3-xapp python3-netaddr python3-ifaddr
sudo dpkg -i *warp*.deb

# if building is done without additional packages, warpinator becomes broken,
# needs:
# sudo apt --fix-broken install
# sudo apt-get -y install gir1.2-xapp-1.0 python3-setproctitle python3-xapp python3-netaddr python3-ifaddr
# sudo dpkg -i *warp*.deb
