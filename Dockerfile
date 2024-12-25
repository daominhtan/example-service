# Start with the official Golang base image
FROM golang:1.23.1-alpine3.20 as builder

# Set environment variables
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

# ENV GO111MODULE=on \
#     CGO_ENABLED=0 \
#     GOOS=linux \
#     GOARCH=arm \
#     GOARM=7

# Set the working directory in the container
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod go.sum ./

# Download and cache Go modules
RUN go mod download

# Copy the source code
COPY . .

# Build the application
RUN go build -o main .

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["./main"]
