#!/bin/bash
# Dyalog APLのパスを通す（環境に合わせて調整してください）
export DYALOG="/opt/mdyalog/18.2/64/unicode"
export PATH="$DYALOG:$PATH"

cd /home/coco/src/apl_server/MiServer
# -q: 起動メッセージ抑制, -script: 指定したAPLファイルを実行
/usr/bin/dyalog -q -script start_server.apl
