#!/bin/bash
sudo apt update
sudo sudo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev libwxgtk3.0-dev -y
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
sudo cp ~/bin/repo /bin/repo
sudo chmod a+x /bin/repo
sudo fdisk -l
mkdir exthmui
echo "开始挂载磁盘..."
echo -n "请输入磁盘名："
read disk_name
sudo fdisk ${disk_name}
n



w
sudo mkfs.ext4 ${disk_name}1
sudo mount ${disk_name}1 exthmui
echo "磁盘挂载完成,请手动设置git参数"
read -p "git config --global user.name " git_username
read -p "git config --global user.email " git_email
git config --global user.name ${git_username}
git config --global user.email ${git_email}
cd exthmui
echo "repo初始化..."
repo init -u https://github.com/exthmui/android.git -b exthm-11
echo "开始下载安卓源码..."
repo sync -j$(nproc --all) -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
