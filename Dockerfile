FROM golang:1.19

# Set working folder
WORKDIR /app

# Copy GO files to the workdir
COPY go.mod go.sum ./

# Download all GO dependencies
RUN go mod download

# Copy source code
COPY *.go ./

# Build application with statically linked dependencies
RUN CGO_ENABLED=0 GOOS=linux go build -o /app/kbot

# Execute application
ENTRYPOINT ["/app/kbot"]

