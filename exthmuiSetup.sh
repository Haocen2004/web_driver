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
read -p "请输入磁盘名：" disk_name
echo "参考指令 n -> enter -> enter -> enter -> w"
sudo fdisk ${disk_name}
echo "格式化分区中..."
echo "额外信息处请直接回车"
sudo mkfs.ext4 ${disk_name}1
sudo mount ${disk_name}1 exthmui
git config --global user.name "Hao_cen"
git config --global user.email "haocen.minecraft@gmail.com"
sudo chmod 777 exthmui
cd exthmui/
echo "repo初始化..."
repo init -u https://github.com/exthmui/android.git -b exthm-11 -q
echo "开始下载安卓源码..."
repo sync -j$(nproc --all) -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "初始化完毕."
