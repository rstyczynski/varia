cd /tmp
rm arabic.java
wget https://raw.githubusercontent.com/rstyczynski/varia/master/arabic.java
java_bin=$(ps aux | grep java | grep bin/java | tr -s ' ' | cut -d' ' -f11 | grep -v grep | sort -u)
$java_bin\c -encoding UTF-8 arabic.java 
$java_bin arabic
$java_bin -Dfile.encoding="UTF-8" arabic
rm arabic.class
rm arabic.java
