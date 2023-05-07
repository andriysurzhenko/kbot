FROM golang:1.19

# Set working folder
WORKDIR /app

# Copy GO files to the workdir
COPY go.mod go.sum ./

# Download all GO dependencies
RUN go mod download

# Copy source code
COPY *.go ./

# Build eapplication
RUN CGO_ENABLED=0 GOOS=linux go build -o /kbot

# Execute application
CMD ["/kbot"]

