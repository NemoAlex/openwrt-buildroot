FROM ubuntu:14.04.3

RUN apt-get update \
 && apt-get install -y git-core subversion build-essential gcc-multilib libncurses5-dev libssl-dev zlib1g-dev gawk flex gettext wget unzip python ccache sudo vim libxml-parser-perl \
 && apt-get clean \
 && useradd -m builder \
 && echo 'builder ALL=NOPASSWD: ALL' > /etc/sudoers.d/builder \
 && sudo -iu builder git clone git://git.openwrt.org/15.05/openwrt.git

WORKDIR /home/builder/
USER builder

