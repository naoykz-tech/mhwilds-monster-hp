# MH Wilds Monster HP

Monster Hunter Wilds（Steam版PC）向けの Lua MOD です。
大型モンスターの **名前・現在HP・最大HP・残りHP%** を画面に表示することを目標にしています。

> ⚠️ 開発中です。現在は「Hello World 表示」と設定画面の土台まで実装しています。

## 前提ツール

| ツール | 必須 | 用途 |
| --- | --- | --- |
| Monster Hunter Wilds（Steam版） | ✅ | 実行環境 |
| [REFramework](https://github.com/praydog/REFramework-nightly/releases) | ✅ | Lua MOD を動かす土台 |
| Fluffy Mod Manager | 任意 | MOD の ON/OFF 管理 |

## 導入方法

1. REFramework をゲームフォルダに導入し、ゲーム起動時に REFramework のメニューが出ることを確認します。
2. このリポジトリの `src/monster_hp.lua` を、次の場所にコピーします。

```
steamapps/common/MonsterHunterWilds/
└ reframework/
   └ autorun/
      └ monster_hp.lua   ← ここに置く
```

3. ゲームを起動し、画面左上に `Hello World` が表示されれば成功です。
4. REFramework のメニュー（Insert キー）→ **Script Generated UI** → **Monster HP MOD** から設定を変更できます。

## アンインストール

`reframework/autorun/monster_hp.lua` を削除してください。
設定ファイルを消す場合は `reframework/data/monster_hp_config.json` も削除します。

## フォルダ構成

```
mhwilds-monster-hp/
├ src/
│  └ monster_hp.lua          … MOD本体
├ docs/
│  └ discovered-types.md     … ゲーム内部の調査メモ
├ README.md
└ .gitignore
```

## 開発ロードマップ

- [x] 画面に「Hello World」を表示する
- [x] 設定画面（ON/OFF・表示位置）を付ける
- [x] 設定値を保存できるようにする
- [ ] プレイヤーの情報（HP・座標など）を1つ取得する
- [ ] 大型モンスターを取得する
- [ ] モンスターHPを画面表示する
- [ ] ZIP化して別環境で導入確認する
- [ ] Fluffy Mod Manager 対応

## 対応バージョン

| 項目 | バージョン |
| --- | --- |
| Monster Hunter Wilds | （動作確認したら記入） |
| REFramework | （動作確認したら記入） |

ゲームのアップデートで動かなくなることがあります。調査したクラス名やメソッド名は `docs/discovered-types.md` にバージョンとセットで記録しています。

## 注意

- オンラインで他のプレイヤーに影響する改変や、公平性を損なう用途には使用しないでください。
- 導入前にセーブデータのバックアップをおすすめします。
- 本MODは非公式のファンメイドです。株式会社カプコンとは関係ありません。
