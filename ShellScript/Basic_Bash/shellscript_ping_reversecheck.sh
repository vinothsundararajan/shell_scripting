#!/bin/bash
HOST=facebook.com
ping -c 2 $HOST || echo "$HOST is unreachable"