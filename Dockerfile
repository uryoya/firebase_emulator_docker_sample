FROM node:22-alpine

WORKDIR /app

RUN apk update && apk --no-cache add openjdk21-jre-headless

RUN npm install -g firebase-tools \
    && firebase setup:emulators:ui \
    && firebase setup:emulators:firestore \
    && firebase setup:emulators:storage \
    && firebase setup:emulators:pubsub

CMD ["firebase", "emulators:start", "--import=exports", "--export-on-exit=exports"]
