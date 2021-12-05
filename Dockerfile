FROM tomcat
add target/addressbook.war /tomcat/webapps/
CMD ['catalina.sh']




docker build -t shubhamkushwah123/addressbook:1.0 .
