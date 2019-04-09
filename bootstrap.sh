zip_file=~/Downloads/mac-setup.zip
extract_dir=~/Downloads/mac-setup

curl -o $zip_file https://github.com/javatarz/mac-setup/archive/master.zip
unzip master.zip -d $extract_dir

cd $extract_dir
sh install.sh

rm -rf $extract_dir $zip_file