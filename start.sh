mkdir data
geth --datadir data init genesis.json
geth --datadir data --password passfile account new | awk -F '[{}]' '{print $(NF-1)}' > accid
geth --datadir data --networkid 5777 --rpc --rpcaddr "127.0.0.1" --rpcport 7545  --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpccorsdomain "*" --nodiscover --verbosity 6  --unlock 0 --password passfile --mine --minerthreads=1 console 2>>info.log