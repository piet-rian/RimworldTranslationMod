#!/bin/bash
### リポジトリテンプレートからプロジェクトを作成した後に、手動で実行する初期化スクリプト
# MINGW64 なり git-bash なりの windows上のbash環境で実行することを想定

### 処理内容
# - プレースホルダーの置換処理
#   - mod名
#   - mod番号
#   - modパッケージ名
# - 置換対象ファイル名
#   - `**/About/About.xml`
#   - `**/README.md`
#   - `**/LoadFolders.xml`

## プレースホルダーの定義
PLACEHOLDER_MOD_NAME="depended mod name"
PLACEHOLDER_MOD_WORKSHOP_NUMBER="_workshopnumber_"
PLACEHOLDER_MOD_PACKAGE="depended.mod.package.id" # `.` は 正規表現における `.` ではない


## mod名、mod番号、modパッケージ名を軌道引数で受け取る
if [ $# -ne 3 ]; then
  echo "Usage: $0 <mod name> <mod workshop number> <mod package id>"
  exit 1
fi

MOD_NAME="$1"
MOD_WORKSHOP_NUMBER="$2"
MOD_PACKAGE="$3"

## 置換対象ファイルの定義
TARGET_FILES=(
  "**/About/About.xml"
  "**/README.md"
  "**/LoadFolders.xml"
)
## 置換処理
for FILE_PATTERN in "${TARGET_FILES[@]}"; do
  # findコマンドで対象ファイルを検索し、sedコマンドで置換を実行
  find . -type f -path "$FILE_PATTERN" -print0 | xargs -0 sed -i \
    -e "s/${PLACEHOLDER_MOD_NAME}/${MOD_NAME}/g" \
    -e "s/${PLACEHOLDER_MOD_WORKSHOP_NUMBER}/${MOD_WORKSHOP_NUMBER}/g" \
    -e "s/${PLACEHOLDER_MOD_PACKAGE}/${MOD_PACKAGE}/g"
done
