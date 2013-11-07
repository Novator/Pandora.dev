#!/bin/sh

#gpg --list-keys
#gpg --import ./keys.gpg
#gpg --gen-key
#gpg --fingerprint 31EAF4D7
#gpg --send-keys --keyserver keyserver.ubuntu.com 31EAF4D7
#gpg --export > ./keys.gpg
#https://launchpad.net/~galyuk/+editpgpkeys
#nano message.txt
#gpg --decrypt message.txt
#gpg --edit-key 31EAF4D7
#gpg --import friends.gpg.txt
#gpg --armor --export robux@mail.ru > robux.gpg.txt
#gpg --output robux.gpg --export robux@mail.ru
#gpg --export-secret-key > ./robux.gpg.sec
#gpg --textmode --encrypt --sign --recipient robux@mail.ru pgp-letter.txt
gpg --armor --encrypt --sign --local-user robux@mail.ru --recipient ironsoft@mail.ru pgp-letter.txt

