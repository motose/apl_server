## APL DB サービス (apl_server)

APLを使用してDB連携のサーバーサイドWEBアプリケーションが実現可能かの実験サイト。
住所から郵便番号の検索、郵便番号から住所の検索の機能を有し、結果として得た住所のマップ（Google Maps）とAI（ChatGPT）による詳細情報の表示が行える。

### DB連携
MySQLに日本郵便のKEN_ALL.CSV（約12万件）を取り込み検索可能にした。
APLからはsystemコマンドとしてMySQLを呼び出し、CSVファイルに出力させる。そのCSVファイルを読みだして結果表示を作る。

### WEB連携
Dyalog MiServer 3フレームワークを使い、.mipageにプログラムを組んだ。

### ビルド
コンパイルは無い。

### 公開
本サービスはhttp://127.0.0.1:8093/で稼働しているが、OpenRestyでSSL化してサブドメインにリバースプロキシで接続しhttps://apl.etech21.net/dbとして公開している。
systemdサービスにより常駐化している。




