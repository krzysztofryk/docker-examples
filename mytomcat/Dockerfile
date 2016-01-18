# Rozszerzymy już istniejący obraz, czyli taki z zainstalowaną Javą, w wersji 1.7
FROM java:7-jre

# Ustawiamy zmienną środowiskową CATALINA_HOME, będzie wskazywała na /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
# Dopisujemy do PATH-a systemowego ścieżkę do katalogu bin naszego Tomcat-a
ENV PATH $CATALINA_HOME/bin:$PATH
# Tworzymy katalog, dla Tomcata (/usr/local/tomcat)
RUN mkdir -p "$CATALINA_HOME"

# Wszystkie polecenia, opisane dla RUN (poniżej), będziemy od razu wykonywać, w katalogu Tomcat-a (/usr/local/tomcat)
WORKDIR $CATALINA_HOME

# W zmiennej środowiskowej zapisujemy link do Tomcat-a
ENV TOMCAT_TGZ_URL https://www.apache.org/dist/tomcat/tomcat-7/7.0.67/bin/apache-tomcat-7.0.67.tar.gz

RUN set -x \
# Pobieramy plik ze spakowanym Tomcatem, przy użyciu curl-a i zapisujemy go jako "tomcat.tar.gz"
curl -fSL "$TOMCAT_TGZ_URL" -o tomcat.tar.gz \
# Rozpakowujemy Tomcat-a
tar -xvf tomcat.tar.gz  \
# Usuwamy pobrany, spakowany plik
rm tomcat.tar.gz*

# Instruujemy Docker-a, że kontener będzie nasłuchiwał na porcie 8080
EXPOSE 8080

# Uruchamiamy Tomcata, przy użyciu ./catalina.sh run
CMD ["catalina.sh", "run"]
