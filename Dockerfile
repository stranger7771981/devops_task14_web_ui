FROM golang:latest 
COPY index.html /usr/share/nginx/html/index.html
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go build -o main main.go
EXPOSE 80
CMD ["/app/./main"]
