# bbs

This is my attempt to build something like a retro BBS but newer. Most BBS's use some sort of emulation to run old DOS, C64, Amiga, etc. BBS's through telnet. I'm not against those, but they are pretty limited in what they can do. My goal is to provide new functionality such as a real online library, Futaba-style text-message boards, and even a retro BBS section for those who crave ansi graphics.

My hope is to put everything in containers so it can be expanded later on.

My files so far:

* epub.py -- ebook reader
* hello -- calls the ebook reader with a book. This will be deprecated soon.
* shadow -- Create a user called "bbs" and replace the line in /etc/shadow for bbs with this one.  Users can than ssh in as bbs without needing a password.
* BBS.py -- Welcome Menu.
* setupscript.sh -- It will set up a new Ubuntu 16.04 VM or LXD Container to be able to be used as the BBS.

I've created a setup script and focused the base installation on Ubuntu rather than OpenSUSE. Mainly because I'm doing my testing in LXC and the LXC base image won't run Docker. I'm hoping to convert the setup script into a SaltStack state when I get everything more settled. The default installation directory will be /opt/bbs.

Latest Update:

Running docker inside of a LXD/LXC container sucks. When I was doing my tests to see if it was feasible, I was just trying to use the Hello-World container and it worked fine. I naively assumed that if that worked, other containers would also. I was wrong. My Wordpress docker-compose script works fine in a normal VM no matter the distro. Inside of a container, MariaDB throws a bunch of permissions errors and won't start. Next step, vagrant?
