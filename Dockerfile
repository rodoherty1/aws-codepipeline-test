FROM openjdk:alpine
ADD scripts /scripts
ARG BUILD_DIR
RUN echo $BUILD_DIR
ADD $BUILD_DIR /build
RUN chmod 755 /scripts/run.sh
ENTRYPOINT ["/scripts/run.sh"]



