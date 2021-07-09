FROM collelog/buildenvc:node14-alpine3.12 AS test1
WORKDIR /build

FROM collelog/buildenvc:alpine3.13 AS test2
WORKDIR /build

COPY --from=test2 /build /

# final image
FROM alpine:3.12.3 
LABEL maintainer "collelog <collelog.cavamin@gmail.com>"


RUN set -eux && \
	apk upgrade --no-cache --update-cache

