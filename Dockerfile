FROM golang:latest

RUN apt-get update --fix-missing && apt-get install -y vim && \
    apt-get clean

RUN go get -v github.com/yudai/gotty && \
    go get -v github.com/zmb3/gogetdoc && \
    go get -v golang.org/x/tools/cmd/guru && \
    go get -v golang.org/x/lint/golint && \
    go get -v github.com/davidrjenni/reftools/cmd/fillstruct && \
    go get -v github.com/rogpeppe/godef && \
    go get -v github.com/fatih/motion && \
    go get -v github.com/kisielk/errcheck && \
    go get -v github.com/derekparker/delve/cmd/dlv && \
    go get -v github.com/mdempsky/gocode && \
    go get -v github.com/josharian/impl && \
    go get -v github.com/koron/iferr && \
    go get -v github.com/jstemmer/gotags && \
    go get -v golang.org/x/tools/cmd/gorename && \
    go get -v golang.org/x/tools/cmd/goimports && \
    go get -v github.com/stamblerre/gocode && \
    go get -v github.com/fatih/gomodifytags && \
    go get -v honnef.co/go/tools/cmd/keyify && \
    go get -v github.com/klauspost/asmfmt/cmd/asmfmt && \
    go get -v github.com/alecthomas/gometalinter

COPY vim /root/.vim
COPY vimrc /root/.vimrc

EXPOSE 8080

ENTRYPOINT ["gotty", "-w", "-p=8080", "bash"]
