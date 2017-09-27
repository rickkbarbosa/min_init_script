#!/bin/bash

MINER_USER='put-your-user-here'
MINER_PASS='put-your-password-here'
MINER_URL='stratum+tcp://xmr.pool.minergate.com:45560'

THREADS_COUNT=$(grep -c ^processor /proc/cpuinfo ;)
FREE_THREADS=2  #Number of cores leaved free 


minerd -B -a cryptonight -o ${MINER_URL} -u ${MINER_USER} -p ${MINER_PASS} -t $(expr $THREADS_COUNT - $FREE_THREADS;)