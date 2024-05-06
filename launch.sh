#!/bin/sh -x

$* &
X_PID=$!
taskset -p -c 3 $X_PID
chrt --fifo -p 99 $X_PID
