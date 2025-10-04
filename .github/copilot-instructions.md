---
applyTo: "**"
---

# プロジェクト概要

このプロジェクト・リポジトリは、Rimworldの特定のModの日本語化するModを提供することを目的としています。

## フォルダ構成

* `\1.[0-9]\**\Languages\Japanese (日本語)\**\*.xml`: 日本語化用XMLファイル群
    * `**` は日本語化対象とするModによって異なる
* `.github` : GitHub関連の設定ファイル等を格納するフォルダ
  * `copilot-instructions.md` : 本ファイル。 GitHub Copilot Agent mode 用の概要説明書
  * `translation.instructions.md` : GitHub Copilot Agent mode 用の翻訳指示書
  * `glossary.md` : 用語集, 翻訳用語の統一に使用
* `About` : Modのメタ情報を格納するフォルダ
* `LICENSE` : ライセンス情報
* `README.md` : 日本語化Modの説明
* `LoadFolders.xml` : Modのロード順序指定
