FROM golang:1.20

# Set Token
ARG TOKEN
ENV TELE_TOKEN $TOKEN

# Set working folder
WORKDIR /app

# Copy binary
COPY ./kbot ./

# Start application
ENTRYPOINT ["./kbot"]

