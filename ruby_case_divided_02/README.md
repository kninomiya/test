# 説明

* 入力した数値によって、以下のように表示されるプログラム

```
1 と等しい時は "相打ちになりました…"
2 と等しい時は "主人公が勝ちました！"
3 と等しい時は "モンスターが勝ちました！"
上記以外の場合は "まだ戦(や)ってます"
```

# 使い方

```bash
$ echo "1" | ruby index.rb
相打ちになりました...

$ echo "2" | ruby index.rb
主人公が勝ちました!

$ echo "3" | ruby index.rb
モンスターが勝ちました!

$ echo "4" | ruby index.rb
まだ戦(や)ってます
```

