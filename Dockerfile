FROM opensuse
MAINTAINER Jason Evans <jevans@suse.com>

# add bbs user
useradd bbs

# add user files
ADD passwd /etc/
ADD shadow /tmp
RUN cat /tmp/shadow >> /etc/shadow

# add bbs files
ADD bbs.py /
ADD hello /
ADD epub.py /

# add dependancies

RUN zypper ref && zypper in python-beautifulsoup4 python-curses openssh
RUN sshd-gen-keys-start

CMD sshd 
