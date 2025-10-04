---
applyTo: 1.[0-9]\**\Languages\Japanese (日本語)\**\*.xml
---

# Translation Instructions

## 翻訳に関する基本的な指示

* 翻訳元(原文)は `<!-- zz: xxx -->` というコメントタグ内に記載されている `xxx` の部分
* 原文の言語は `<!-- zz: xxx -->` というコメントタグ内に記載されている `zz` で判断する
* 翻訳先(訳文)は日本語(ja-JP)
* 訳文は原文の直下にあるタグ内の `TODO` の部分に記載する
* [glossary.csv](./glossary.csv) に用語集を用意しているので、適宜参照すること
  * 用語集にないものについては、普遍的な訳語がある場合はそれを使用し、ない場合はカタカナ表記とすること
    * 普遍的な訳語がない例: chemshine → ケムシャイン

### 例: 翻訳前

```xml
<!-- EN: A simple vest, providing a decent layer of insulation from both heat and cold. -->
<Apparel_Vest.description>TODO</Apparel_Vest.description>
```

### 例: 翻訳後

```xml
<!-- EN: A simple vest, providing a decent layer of insulation from both heat and cold. -->
<Apparel_Vest.description>シンプルなベストで、暑さと寒さの両方に対する適度な断熱層を提供します。</Apparel_Vest.description>
```

## 翻訳に関しての特別な指示

* 訳文の行頭、行末に空白を含めないこと
* 訳文に実改行を含めないこと
* 原文内の単一の実改行は、訳文から削除すること
* 原文内の連続する実改行は、訳文においてそれぞれを `\n` に置き換えること
* 原文内の `\n` は、そのまま訳文に `\n` として出力すること
* 原文に `<li>`タグがある場合は、翻訳文においてもタグ構造を維持すること
* 原文内のプレースホルダー (`[xxxx]`, `{yyyy}`) は、訳文にも同様に含めること

特別な指示に該当する場合の翻訳例は `translation.sample.instructions.md` を参照
