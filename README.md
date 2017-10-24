# bbs

This is my attempt to build something like a retro BBS but newer. Most BBS's use some sort of emulation to run old DOS, C64, Amiga, etc. BBS's through telnet. I'm not against those, but they are pretty limited in what they can do. My goal is to provide new functionality such as a real online library, Futaba-style text-message boards, and even a retro BBS section for those who crave ansi graphics.

My hope is to put everything in containers so it can be expanded later on.

My files so far:

* epub.py -- ebook reader
* hello -- calls the ebook reader with a book. This will be deprecated soon.
* shadow -- Create a user called "bbs" and replace the line in /etc/shadow for bbs with this one.  Users can than ssh in as bbs without needing a password.
* BBS.py -- Welcome Menu. Edit /etc/password and change /bin/bash to this file so that when users log in, the don't get a real shell, they get a menu.

The included Dockerfile builds without a problem, but I am considering running the whole project in an LXC container. A single container that could be deployed would be a easier to handle than a project with multiple docker containers and still provide protection from a user breaking out of the container.
