FROM opensuse
MAINTAINER Jason Evans <jevans@suse.com>

# add bbs user
RUN useradd bbs

# add user files
ADD passwd /etc/
ADD shadow /etc

# add bbs files
ADD bbs.py /
ADD hello /
ADD epub.py /

# add dependancies

RUN zypper ref && zypper --non-interactive in python-beautifulsoup4 python-curses openssh
RUN sshd-gen-keys-start
RUN /usr/sbin/sshd
CMD python bbs.py

