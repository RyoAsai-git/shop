# FROM node:12.18.3-alpine

# ENV APP_HOME /app
# RUN mkdir -p $APP_HOME
# WORKDIR $APP_HOME

# RUN apk update && \
#     npm install -g @vue/cli && \
#     npm install --save axios

FROM node:12.18.3-alpine

# WORKDIR /app

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD package.json ${APP_HOME}/package.json
ADD package-lock.json $APP_HOME/package-lock.json

ADD . $APP_HOME

RUN npm install
# RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]