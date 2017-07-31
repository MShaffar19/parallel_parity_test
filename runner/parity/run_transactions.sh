#!/bin/bash

touch /tmp/running_transactions
source /parity/address

/parity-setup/target/release/parity-rpc-generator --config rpc-generator-config.json --seed $RANDSEED --filter-from $ADDRESS --transactions $TRANSACTIONS --chunk-size $CHUNKS --output /tmp/par

for i in /tmp/par*
do 
  echo $i
  curl --data @${i} -H "Content-Type: application/json" -X POST localhost:8540
done

rm /tmp/par*
rm /tmp/running_transactions
