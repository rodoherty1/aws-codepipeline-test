FROM openjdk:alpine
ADD scripts  /scripts
ADD $CODEBUILD_SRC_DIR_BuildArtifact /$CODEBUILD_SRC_DIR_BuildArtifact
RUN chmod 755 /scripts/run.sh
ENTRYPOINT ["/scripts/run.sh"]



