FROM ubuntu
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

RUN apt-get update && apt-get install -y python-pip openssh-server
RUN pip install beautifulsoup4 curses-ui
RUN mkdir /var/run/sshd
CMD /usr/sbin/sshd

