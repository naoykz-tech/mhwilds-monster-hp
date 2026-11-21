# 進捗ログ

このMODの開発で「何ができたか」「次に何をするか」を日付順に記録します。
新しい記録は **上に追加** していきます。

<!-- 新しい日の記録はこの下に、同じ形（できたこと／わかったこと／まだ確認していないこと／次にやること）で追加する -->

---

## 2026-11-21　自分のプレイヤーを取得できた 🎉

**できたこと**
- REFramework の Object Explorer で app.PlayerManager を開き、TDB Methods から getMasterPlayer() を自分で見つけた
- Lua で app.PlayerManager を呼び出し、getMasterPlayer() で自分のプレイヤーを取得できた
- 画面に緑の文字で「Player OK」を表示できた

**わかったこと**
- 毎フレーム動かしたいコードは、re.on_frame(function() と end) の間に書く必要がある
- end) の外に書くと、スクリプト読み込み時に1回しか動かない（Reset Scripts の瞬間だけ表示される）
- 取れなかったときに別の文字（PM NG / Player NG）を出すと、どこで止まっているか調べやすい
- draw.text は日本語を表示できない（四角になる）ので、表示する文字は英語にする

**次にやること**
1. プレイヤーの座標を取得して画面に出す
2. 見つけたクラス名・メソッド名を docs/discovered-types.md に記録する
3. 設定画面と設定保存の動作確認

---

## 2026-11-10　Hello World 表示に成功 🎉

**できたこと**
- GitHub にリポジトリを作成し、README・MOD本体・調査メモのひな形を用意した
- `src/monster_hp.lua` を `reframework/autorun/` に置いてゲームを起動し、画面に「Hello World」が表示されることを確認した
- リポジトリを公開（Public）にして、友達にも見てもらえるようにした

**わかったこと**
- REFramework 経由で Lua スクリプトが正しく読み込まれ、`re.on_frame` と `draw.text` で画面に文字を出せる

**まだ確認していないこと**
- REFramework メニュー内の設定画面（ON/OFF・表示位置）が表示・操作できるか
- 設定を変えたあと、ゲームを再起動しても設定が残っているか

**次にやること**
1. 設定画面と設定保存の動作確認
2. プレイヤーの情報（HP・座標など）を1つ取得して画面に出す
3. 見つけたクラス名・メソッド名を `docs/discovered-types.md` に記録する

**動作環境**
- Monster Hunter Wilds：（バージョンを記入）
- REFramework：（バージョンを記入）

