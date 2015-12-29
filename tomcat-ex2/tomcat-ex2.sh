docker run --name tomcat -itd -v $(pwd)/sample.war:/usr/local/tomcat/webapps/sample.war -p 8080:8080 tomcat:8-jre8 && \
docker run --link tomcat -itd -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -p 80:80 nginx
