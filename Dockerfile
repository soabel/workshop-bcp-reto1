FROM mobiledevops/android-sdk-image:latest AS base
WORKDIR /app
USER root
COPY . .
RUN ./gradlew clean assembleRelease


FROM base
WORKDIR /app
USER root
COPY . .

CMD ["./docker-entrypoint.sh"]
