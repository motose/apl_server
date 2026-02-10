⎕TRAP←0 'S'  ⍝ エラーが起きたら直ちに終了(systemdが再起動してくれる)
)LOAD miserver
Start './MS3'
{⎕DL 60 ⋄ ∇⍵} 0
