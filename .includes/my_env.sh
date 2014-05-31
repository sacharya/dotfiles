JAVA4_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.4/Home
JAVA5_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home
JAVA6_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

JAVA_HOME=$JAVA6_HOME
JAVA_OPTS="-Xms2g -Xmx2g -XX:PermSize=512m -XX:MaxPermSize=512m"

#MAVEN_OPTS="-Xms1024m"
M2_HOME=/usr/java/apache-maven-3.0.3
#M2_HOME=/usr/java/apache-maven-2.2.1
M2_REPO=~/.m2/repository
M2=$M2_HOME/bin

GO_HOME=/usr/install/go

PATH=$GO_HOME/bin:$JAVA_HOME/bin:$M2_HOME/bin:/bin:/opt/local/bin:$PATH  
export GO_HOME JAVA_HOME JAVA_OPTS M2_HOME M2 MAVEN_OPTS PATH

