FROM jupyter/singleuser

USER jovyan

RUN pip install -e git://github.com/python-visualization/folium.git@master#egg=folium

USER root
RUN apt-get update && apt-get install -y \
  mysql-client
ADD singleuser-cityscope.sh /srv/singleuser/singleuser-cityscope.sh

USER jovyan
CMD ["sh", "/srv/singleuser/singleuser-cityscope.sh"]
