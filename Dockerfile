FROM openjdk:alpine
ADD scripts /scripts
RUN echo "BUILD_DIR=$BUILD_DIR"
RUN echo "CODEBUILD_SRC_DIR_BuildArtifact=$CODEBUILD_SRC_DIR_BuildArtifact" 
RUN echo "CODEBUILD_SRC_DIR=$CODEBUILD_SRC_DIR" 
ADD $CODEBUILD_SRC_DIR_BuildArtifact/target /build
RUN chmod 755 /scripts/run.sh
ENTRYPOINT ["/scripts/run.sh"]



