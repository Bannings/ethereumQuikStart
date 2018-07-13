FROM ethereum/client-go:alpine
RUN mkdir -p /privatechain
ADD data /privatechain/data
ADD passfile /privatechain

ENTRYPOINT [ "/geth" ]
