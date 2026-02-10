#!/bin/bash
# start_ms3.sh — Run MiServer MS3 site safely

# 環境変数
export DYALOG=/opt/mdyalog/20.0/64/unicode
export APLKERNEL_HOME=/home/coco/src/apl_server

# ワークディレクトリをMS3に
cd /home/coco/src/apl_server/MiServer/MS3 || exit 1

# Dyalogをスクリプトモードで起動
$DYALOG/dyalog -script /home/coco/src/apl_server/bin/start_ms3.apl

