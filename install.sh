#!/bin/bash


## assume that ~/bin is in your path, if not, make it so.

mkdir -p ${HOME}/bin
cp bin/J ${HOME}/bin
cd ${HOME}/bin
ln -sf J J8
ln -sf J J11
ln -sf J J12

cat <<EOF
To make this work, please add ${HOME}/bin to PATH
and add the following lines to your ~/.bashrc

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=${JAVA_HOME}/bin:${PATH}

which prefixes JAVA_HOME/bin to your PATH.

If you do not like JAVA to be the first on your PATH, change
your PATH declaration so that it does not.

Note that un a default java installation on ubuntu (and probably all debian children) is in /usr/bin/ and that points to, so you may want the JAVA part 
used by this switcher BEFORE /usr/bin in your PATH.
EOF

