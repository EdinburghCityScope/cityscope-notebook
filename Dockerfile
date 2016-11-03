FROM jupyter/singleuser

USER jovyan
RUN conda install -c ioos --quiet --yes \
    'folium=0.2.1' \
    && conda clean -tipsy

USER root
RUN apt-get update && apt-get install -y \
  mysql-client
ADD singleuser-cityscope.sh /srv/singleuser/singleuser-cityscope.sh

USER jovyan
CMD ["sh", "/srv/singleuser/singleuser-cityscope.sh"]
