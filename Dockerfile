FROM golang:1.19

# MEMO
# docker build -t kbot-container --build-arg TOKEN=$TELE_TOKEN .

# Pass token for the application
ARG TOKEN
ENV TELE_TOKEN $TOKEN

# Set working folder
WORKDIR /app

# Copy GO files to the workdir
COPY go.mod go.sum ./

# Download all GO dependencies
RUN go mod download

# Copy source code
COPY *.go ./

# Export Token before building an application
#CMD ["export TELE_TOKEN=$TELE_TOKEN", "echo $TELE_TOKEN"]
CMD ["echo $TELE_TOKEN"]

# Build application with statically linked dependencies
RUN CGO_ENABLED=0 GOOS=linux go build -o /app/kbot
 
# Start application
ENTRYPOINT ["/app/kbot"]

