FROM alpine
 

MAINTAINER wbl i@1l.fit
 

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add nginx && mkdir /index

COPY index /index
ADD default.conf /etc/nginx/http.d

RUN mkdir -p /run/nginx

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
