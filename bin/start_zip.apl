⍝ start_zip.apl — ZIP MiServer 起動用スクリプト

⍝ ZIP サイト用ディレクトリ
siteRoot ← '/home/coco/src/apl_server/MiServer'

⍝ ワークスペース読み込み
)LOAD miserver   ⍝ MiServer 本体の ws をロード
)CLEAR           ⍝ 前回の Start 残骸をクリア

⍝ ディレクトリ移動
cd ← siteRoot

⍝ MiServer 起動
cfg ← ⎕NS ⍬
cfg.Port ← 8093
Start siteRoot cfg

'MiServer for ', siteRoot, ' started on port ', ⍕cfg.Port

