FROM nginx:latest

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /usr/share/nginx/html/index.html

RUN export IP=$(curl -s http://ipinfo.io/ip) && \
    sed -i "s/{{ .IP }}/$IP/g" /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
