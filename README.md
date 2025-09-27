# RimworldTranslationMod
<!-- # depended mod name(ja-JP) -->

[翻訳対象のMod名を入れる](https://steamcommunity.com/sharedfiles/filedetails/?id=xxxxxxxxx) およびその拡張Modの自分用日本語化Mod

[Extract translation](https://steamcommunity.com/sharedfiles/filedetails/?id=3026452122)で出力したファイルを、GithubCopilot の Agent mode に翻訳させた上で、一部に強めの意訳を施した内容であることを承知の上で使用してください。

## 注意点

* 自身が不都合に感じない部分については対応がされません
  * 翻訳漏れ、翻訳揺れ、Core+DLCと異なる言い回し
* 更新への対応もおそらく遅い
* 自分が翻訳対象Modを使用しなくなった場合は更新が止まります

自分用のModが結果として公開されている状態である、ということを改めてご留意ください

## 導入方法

一般的な日本語化Modに同じ。下記の例のように、翻訳対象のModより下に配置してください。

> * Harmony
> * Core
> * DLC群
> * (翻訳対象がさらに前提としているMod名)
> * depended mod name
> * additional mod name
> * VOE拡張Mod群(詳細は後で記載)
> * **本Mod**

## MID-SAVE

* 途中導入および除去
  * 特に問題ないでしょう

## CONFLICT

* 他の翻訳がすでに導入されてる状態で、更に本Modも導入した場合は変なことが起こるかもしれません

## NOTICE

本Modは [The Unlicense](LICENSE) [(日本語参考訳)](https://licenses.opensource.jp/Unlicense/Unlicense.html) で提供されています。

プルリクエストおよびイシューについては [リポジトリに対する各種貢献についての指針](https://github.com/piet-rian/.github/blob/main/CONTRIBUTING.md) を参照した上でお願いします。
