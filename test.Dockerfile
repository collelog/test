#FROM collelog/buildenv:node14-alpine3.12 AS test1
#WORKDIR /build

#FROM collelog/buildenv:alpine3.13 AS test2
#WORKDIR /build

# final image
FROM arm32v7/alpine:3.13
LABEL maintainer "collelog <collelog.cavamin@gmail.com>"

#COPY --from=test2 /build /

RUN set -eux && \
	apk upgrade --no-cache --update-cache

