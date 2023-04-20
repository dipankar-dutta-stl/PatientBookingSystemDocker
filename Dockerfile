FROM node:latest as build
WORKDIR /usr/local/app
COPY package.json /usr/local/app/
COPY ./dist /usr/local/app/
RUN npm install
RUN npm run build


FROM nginx:latest
COPY --from=build /usr/local/app/dist/patient-appointment-booking-system /usr/share/nginx/html
EXPOSE 8080