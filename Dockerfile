FROM crystallang/crystal:0.26.1 as builder

COPY main.cr main.cr

RUN crystal build -o /bin/crystal-www-example main.cr --release

ENTRYPOINT [ "/bin/crystal-www-example" ]