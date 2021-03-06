# javaswitcher

Switch java versions like a PRO.

Java is moving at a fast pace.
You may want to easily switch between version and are not afraid to use the command line.
Then this javaswitcher might be helpful.

This tiny utility will allow you to switch between java versions by simply typing something like `j13` to
enable java13 and go back with e.g. `j11` to the current LTS, java 11.

## Prerequisites

* You install your Java versions in some default location, such as `/usr/lib/jvm` under Ubuntu
  or Debian. Your millage may vary on other unixes. With some tweaks it may work under OS-X or even bash or git-bash on windows.
  It should not interfere with you IDE, but does better: when you are used to start the IDE from the command line in the directory where
  are, then in particular NetBeans-IDE will kindly follow whatever setting you have choosen.
* You add the versions and actual installations to the file `/usr/lib/jvm/javaversions.conf`.

Example contents (as of 2019-11-05 on my machine):

```
java8=jdk8u232-b09
java11=jdk-11.0.5+10
java13=jdk-13.0.1
graal8=graalvm-ce-java8-19.3.0
graal11=graalvm-ce-java11-19.3.0
default=java8
```

* Add the the script from the `bin` directory called `_setJava` to your PATH, by either copying it +
  to your personal bin (easiest) or to e.g. `/usr/bin` to make it effective system wide.
* Add a few aliases to your personal aliases, either by adding to your `~/.bashrc` file or (better) to the `.bash_aliases` file
  you might already have.

## How to add an additional java versions

You best install a new jdk in the simplest way possible: Download the zip or tar.gz from the
download site, e.g. https://adoptopenjdk.net/ and unpack it below `/usr/lib/jvm`.

For instance for  openjdk 13:

```
( cd /usr/lib/jvm ; sudo tar xf ~/Downloads/openjdk-13_linux-x64_bin.tar.gz )
```

Then if unpacking results in a new directory like: /usr/lib/jvm/`jdk-13`, use that
to add a new config; add the line `java13=jdk-13` to the javaversions.config file.
