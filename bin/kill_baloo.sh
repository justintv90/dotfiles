#!/bin/bash -x
# neuter the thing
rm /usr/bin/baloo_file
ln -s /bin/true /usr/bin/baloo_file
rm /usr/bin/baloo_file_cleaner
ln -s /bin/true /usr/bin/baloo_file_cleaner
rm /usr/bin/baloo_file_extractor
ln -s /bin/true /usr/bin/baloo_file_extractor
rm /usr/bin/akonadi_baloo_indexer
ln -s /bin/true /usr/bin/akonadi_baloo_indexer
rm /usr/bin/baloosearch
ln -s /bin/true /usr/bin/baloosearch
rm /usr/bin/balooshow
ln -s /bin/true /usr/bin/balooshow
# kill all remaining baloo processes
ps -ax | grep baloo | grep -v grep | awk '{print $1}' | xargs kill -9
# and just to be sure...
rm /usr/share/autostart/baloo_file.desktop
# remove trash. replace /home/peterix/ with your ~ here
rm -rf /home/peterix/.local/share/baloo
