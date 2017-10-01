FROM opensuse
MAINTAINER Jason Evans <jevans@suse.com>

# add bbs user
RUN useradd bbs

# add user files
ADD passwd /etc/
ADD shadow /etc

# add bbs files
ADD bbs.py /
ADD epub.py /

# add dependancies

RUN zypper ref && zypper --non-interactive in python-beautifulsoup4 python-curses openssh bsd-games links
RUN sshd-gen-keys-start

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
