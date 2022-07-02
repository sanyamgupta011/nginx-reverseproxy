server {
    listen 80;
#    root /home/ubuntu/my-app/src;
 #   index index.html index.htm index.nginx-debian.html;
    location / {
        proxy_pass http://34.216.177.175:3000;
    }
}
