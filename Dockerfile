FROM openjdk:alpine
ADD scripts /scripts
RUN echo `env`
ADD $BUILD_DIR/target /build
RUN chmod 755 /scripts/run.sh
ENTRYPOINT ["/scripts/run.sh"]



