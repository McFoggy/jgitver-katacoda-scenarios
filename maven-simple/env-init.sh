wget -O /tmp/apache-maven-3.3.9-bin.zip https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip
cd /tmp
unzip apache-maven-3.3.9-bin.zip
export PATH=/tmp/apache-maven-3.3.9/bin:$PATH
rm -f /tmp/apache-maven-3.3.9-bin.zip
cd