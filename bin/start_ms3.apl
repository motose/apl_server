⍝ start_ms3.apl — safe MS3 launch with explicit port

⍝ --- 絶対パスで指定 ---
ws ← '/home/coco/src/apl_server/MiServer/miserver.dws'
site ← '/home/coco/src/apl_server/MiServer/MS3'

⍝ ワークスペースが存在するならロード
:If 0 = ⎕NINFO ws 0
    ⎕ ← ⎕LOAD ws
:EndIf

⍝ MiServer Start が存在するかチェック
:If 'Start' ∊ ⎕NL 3
    cfg ← ⎕NS ⍬
    cfg.Port ← 8093                ⍝ Server.xml のポートと合わせる
    cfg.Root ← site                ⍝ 絶対パス
    ⎕ ← 'Starting MS3 site on port ', ⍕cfg.Port
    Start site cfg
:Else
    'Start function not found in workspace.' ⎕←''
:EndIf

