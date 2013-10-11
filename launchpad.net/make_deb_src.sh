#!/bin/sh

# Manual pages to own Launchpad.net (on Russian):
# http://ky6uk.org/launchpad-its-really-simple
# http://spolab.ru/laboratory/articles/82-sozdanie-deb-paketov-pervye-shagi-v-ppa
# http://askubuntu.com/questions/90764/how-do-i-create-a-deb-package-for-a-single-python-script
# http://help.ubuntu.ru/wiki/%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5_ppa

cd ./pandora-net_0.1-5ubuntu~ppa5

cp -f ../../GitHub/Pandora/* ./pandora
cp -rf ../../GitHub/Pandora/base ./pandora
cp -rf ../../GitHub/Pandora/doc ./pandora
cp -rf ../../GitHub/Pandora/lang ./pandora
cp -rf ../../GitHub/Pandora/model ./pandora
cp -rf ../../GitHub/Pandora/view ./pandora
cp -rf ../../GitHub/Pandora/util ./pandora
chmod -R a+rw ./pandora

#fakeroot dpkg-deb --build -v . pandora-net_0.1-1ubuntu_all.deb
#debuild --no-tgz-check
debuild --no-tgz-check -S -sd

cd ..
