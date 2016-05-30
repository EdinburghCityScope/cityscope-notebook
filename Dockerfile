FROM jupyter/singleuser

USER jovyan
RUN conda install -c ioos --quiet --yes \
    'folium=0.2.0' \
    && conda clean -tipsy

USER root
ADD singleuser-cityscope.sh /srv/singleuser/singleuser-cityscope.sh

USER jovyan
CMD ["sh", "/srv/singleuser/singleuser-cityscope.sh"]
