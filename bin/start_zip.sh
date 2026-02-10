#!/bin/bash
# ZIP MiServer 起動スクリプト

export DYALOG=/opt/mdyalog/20.0/64/unicode
export APLKERNEL_HOME=/home/coco/src/apl_server

cd /home/coco/src/apl_server/MiServer

# MiServer ZIPワークスペースをスクリプトモードで起動
exec /opt/mdyalog/20.0/64/unicode/dyalog -script /home/coco/src/apl_server/bin/start_zip.apl

