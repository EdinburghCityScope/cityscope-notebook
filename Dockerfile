FROM jupyter/singleuser

USER root
ADD singleuser-cityscope.sh /srv/singleuser/singleuser-cityscope.sh

USER jovyan
CMD ["sh", "/srv/singleuser/singleuser-cityscope.sh"]
