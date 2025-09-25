#!/bin/bash
set -e                      # katkesta, kui mõni käsk ebaõnnestub
cd /var/www/live            # sihtkoha kaust, kus on git clone
/usr/bin/git reset --hard   # tühjenda lokaalsed muudatused
/usr/bin/git pull origin master
#!/bin/bash
cd /var/www/source
git pull origin master
