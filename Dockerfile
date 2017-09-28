FROM opensuse
RUN zypper ref && zypper --non-interactive in tar wget make gcc patch gcc-c++ python zip unzip mozilla-nspr-devel ncurses-devel
RUN mkdir sbbs
ADD sbbs_run.tgz /sbbs/
ADD sbbs_src.tgz /sbbs/
RUN cd /sbbs/src/sbbs3; make RELEASE=1
RUN cd /sbbs/src/sbbs3/scfg; make RELEASE=1
RUN cd /sbbs/xtrn/sbj; make
RUN cd /sbbs/xtrn/sbl; make
RUN cd /sbbs/exec
RUN ls -l /sbbs/exec
RUN ln -s ../src/sbbs3/gcc.*.exe.release/* .
RUN ln -s ../src/sbbs3/scfg/gcc.*.exe.release/scfg* .
RUN cd /sbbs/exec && make
