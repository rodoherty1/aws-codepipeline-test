FROM openjdk:alpine
ADD scripts /scripts
ARG BUILD_ARTIFACT
RUN echo $BUILD_ARTIFACT
ADD $BUILD_ARTIFACT /
RUN chmod 755 /scripts/run.sh
ENTRYPOINT ["/scripts/run.sh"]



