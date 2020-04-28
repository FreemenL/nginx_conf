worker_processes  1;
events {
    worker_connections  1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    keepalive_timeout  65;
    server {
        listen       80;
        server_name  localhost;
        location / {
          default_type application/json ;
          return 200 '{"name":"十三先生"}';
        }
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
          root   html;
        }
    }
}