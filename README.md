# javaswitcher

Switch java versions like a PRO.

Java is moving at a fast pace.
You may want to easily switch between version and are not afraid to use the command line.
Then this javaswitcher might be helpful.

## Prerequisites

* You install you java versions in some default location, such as `/usr/lib/jvm` under ubuntu
 or debian.
* You add the versions and actual installations to the file `/usr/lib/jvm/javaversions.conf`.

Example contents (as of 2019-11-05 on my machine):

```
java8=jdk8u212-b03
java11=jdk-11.0.3
java13=jdk-13.0.1
graalvm=graalvm-ce-19.1.0
## set to your liking
default=java8
```

## How to add a java version installations

You best install a new jdk in the simplest way possible: Download the zip or tar.gz from the
download site, e.g. https://adoptopenjdk.net/ and unpack it below `/usr/lib/jvm`.

For instance for  openjdk 13:

```
cd /usr/lib/jvm
sudo tar xf ~/Downloads/openjdk-13_linux-x64_bin.tar.gz
cd
```

Then if  unpacking results in a new directory: /usr/lib/jvm/`jdk-13`, use that
to add a new config

Then add the line `java13=jdk-13` to the config file.
