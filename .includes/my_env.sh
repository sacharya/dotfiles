JAVA4_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.4/Home
JAVA5_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home
JAVA6_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home

JAVA_HOME=$JAVA8_HOME
JAVA_OPTS="-Xms2g -Xmx2g -XX:PermSize=512m -XX:MaxPermSize=512m"

#MAVEN_OPTS="-Xms1024m"
M2_HOME=/usr/java/apache-maven-3.0.3
#M2_HOME=/usr/java/apache-maven-2.2.1
M2_REPO=~/.m2/repository
M2=$M2_HOME/bin

#GOROOT=/usr/install/go

GRADLE_HOME=/Users/sudarshan.acharya/MyDocuments/MyLibraries/gradle-2.7
KAFKA_HOME=/Users/sudarshan.acharya/MyDocuments/MyLibraries/kafka_2.10-0.8.2.1

PATH=$GRADLE_HOME/bin:$JAVA_HOME/bin:$M2_HOME/bin:/bin:/opt/local/bin:$PATH  
#export GOROOT JAVA_HOME JAVA_OPTS M2_HOME M2 MAVEN_OPTS PATH

export JAVA_HOME JAVA_OPTS M2_HOME M2 MAVEN_OPTS PATH

#export GOPATH=/Users/sudarshan.acharya/MyDocuments/MyLabs/golang

export PATH=$PATH:~/MyDocuments/CloudLabs/Openshift/

export GRADLE_HOME KAFKA_HOME
