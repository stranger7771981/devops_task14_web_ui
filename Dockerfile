FROM golang:latest 
COPY index.html /var/www/html/
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go build -o main main.go
EXPOSE 80
CMD ["/app/./main"]
