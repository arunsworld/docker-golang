FROM golang:latest

RUN apt-get update --fix-missing && apt-get install -y vim && \
    apt-get clean

RUN go build -o /go/bin/gotty github.com/yudai/gotty && \
    go build -o /go/bin/gogetdoc github.com/zmb3/gogetdoc && \
    go build -o /go/bin/guru golang.org/x/tools/cmd/guru && \
    go build -o /go/bin/golint golang.org/x/lint/golint && \
    go build -o /go/bin/fillstruct github.com/davidrjenni/reftools/cmd/fillstruct && \
    go build -o /go/bin/godef github.com/rogpeppe/godef && \
    go build -o /go/bin/motion github.com/fatih/motion && \
    go build -o /go/bin/errcheck github.com/kisielk/errcheck && \
    go build -o /go/bin/dlv github.com/derekparker/delve/cmd/dlv && \
    go build -o /go/bin/gocode github.com/mdempsky/gocode && \
    go build -o /go/bin/impl github.com/josharian/impl && \
    go build -o /go/bin/iferr github.com/koron/iferr && \
    go build -o /go/bin/gotags github.com/jstemmer/gotags && \
    go build -o /go/bin/gorename golang.org/x/tools/cmd/gorename && \
    go build -o /go/bin/goimports golang.org/x/tools/cmd/goimports && \
    go build -o /go/bin/gocode-gomod github.com/stamblerre/gocode && \
    go build -o /go/bin/gomodifytags github.com/fatih/gomodifytags && \
    go build -o /go/bin/keyify honnef.co/go/tools/cmd/keyify && \
    go build -o /go/bin/asmfmt github.com/klauspost/asmfmt/cmd/asmfmt && \
    go build -o /go/bin/gometalinter github.com/alecthomas/gometalinter

COPY vim /root/.vim
COPY vimrc /root/.vimrc

EXPOSE 8080

ENTRYPOINT ["gotty", "-w", "-p=8080", "bash"]
