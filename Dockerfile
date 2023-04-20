FROM nginx:latest
COPY /dist/patient-appointment-booking-system /usr/share/nginx/html
EXPOSE 8090