FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN yarn add simple-timer-js
RUN npm install simple-timer-js
RUN npm run test
EXPOSE 8000
CMD ["node","simple_timer.js"]
