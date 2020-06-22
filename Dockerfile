From centos:latest

RUN yum -y install wget 
              
RUN yum -y install httpd 

RUN yum install java-11-openjdk.x86_64 -y

 
RUN  wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN  yum upgrade -y

RUN yum -y install  jenkins 

RUN yum install net-tools -y 

EXPOSE 8080

CMD ["java", "-jar", "/usr/lib/jenkins/jenkins.war"] 
