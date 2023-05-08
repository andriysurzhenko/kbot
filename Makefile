#Set variables
OS = linux
ARCH = amd64
REGISTRY = gcr.io/devops2023-386111
VERSION = latest

format:
	$(info  "Format your code..")
	go fmt

download: 
	echo "Download required modules..."
	go mod download

build: format download
	$(info "Build binary for the defined architecture...")
	CGO_ENABLED=0 GOOS=$(OS) GOARCH=$(ARCH) go build -o ./kbot

linux: format download
	$(info "Build binary for linux/x86_amd64...")
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./kbot

larm: format download
	$(info "Build binary for linux/arm64...")
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o ./kbot

windows: format download
	$(info "Build binary for windows/x86_amd64...")
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -v -o ./kbot

winarm: format download
	$(info "Build binary for windows/arm64...")
	CGO_ENABLED=0 GOOS=windows GOARCH=arm64 go build -v -o ./kbot

macos: format download
	$(info "Build binary for macos/amd64...")
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -v -o ./kbot

marm: format download
	$(info "Build binary for macos/arm64...")
	CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -v -o ./kbot

image: build
	$(info "Build container with the binary for the corresponding platform")
	docker build -t $(REGISTRY)/kbot-$(OS)-$(ARCH):$(VERSION) --build-arg TOKEN=$(TELE_TOKEN) .
test:
	go test -v

clean:
	$(info "Delete previsouly build binary kbot")
	rm -f ./kbot
	$(info "Removing already built docker images...")
	docker rmi -f $$(docker images $(REGISTRY)/kbot-$(OS)-$(ARCH):$(VERSION) -q)
