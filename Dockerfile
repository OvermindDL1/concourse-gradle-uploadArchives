FROM overminddl1/gradle:1.0.1

RUN apt-get update && \
  apt-get install -y jq libxml2-utils && \
  apt-get clean autoclean && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD opt /opt

