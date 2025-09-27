# プロジェクト内容

rimworldの特定のModの日本語化

## 日本語化処理の対象

`**\Languages\Japanese (日本語)\**\*.xml`

## 基本情報

* 取り扱うデータはXML
* 文字コードはUTF-8
* 翻訳元(原文)は英語(en-US)
* 翻訳先(訳文)は日本語(ja-JP)
* 原文は `<!-- EN: xxx -->` というコメントタグ内に記載されている `xxx` の部分
* 訳文は原文の直下にあるタグ内の `TODO` の部分に記載する
* 訳文に実改行を含めないこと
* 原文に実改行がある場合は、以下のルールに従うこと
  * 単一の実改行は、訳文から削除すること
  * 複数の実改行が連続する場合は、訳文においてそれぞれを `\n` に置き換えること
* 原文に `\n` が含まれる場合は、そのまま訳文にも `\n` を含めること
* 翻訳対象となる文字列に `<li>`タグがある場合は、翻訳文にも同様にHTMLタグを含めること

## 期待される動作例

### 基本

#### 翻訳前

```xml
  <!-- EN: tribal gathering -->
  <VFET_TribalGathering.label>TODO</VFET_TribalGathering.label>
```
#### 翻訳後

```xml
  <!-- EN: tribal gathering -->
  <VFET_TribalGathering.label>部族の集会</VFET_TribalGathering.label>
```

### 原文に実改行を含む場合

#### 単一の実改行

```xml
  <!-- EN: Talon shuns technology and progress. Real strength lies in cultural foundations, and only
  by rejecting rapid progress will you be able to gain the respect of the spirits. Rapid technology
  unlocks will invoke bad events. -->
  <VFET_TalonTribal.description>タロンは技術や進歩を避けます。本当の強さは文化的基盤にあり、急速な進歩を拒むことでのみ精霊たちの尊敬を得ることができます。技術を急速に解放すると悪いイベントが発生します。</VFET_TalonTribal.description>
```

#### 複数の実改行

```xml
  <!-- EN: Your savage ways have granted you a bad reputation, and mending relations with other factions will take a long time.

Note: Since you start without any supplies and with every other faction hostile, this is a difficult scenario. -->
  <VFES_Bandits.description>あなた方の荒っぽい振る舞いは悪評を招き、他派閥との関係修復には長い時間が必要です。\n\n注意: 装備なしで開始し、他派閥がすべて敵対しているため非常に難易度の高いシナリオです。</VFES_Bandits.description>
```

### 原文に`<li>`タグを含む場合

```xml
  <!-- EN:
    <li>questName->The [wildmen] [tribe]</li>
    <li>questName->Nearby [wildmen] [tribe]</li>
  -->
  <VFET_OpportunitySite_WildMen.questNameRules.rulesStrings>
    <li>questName->[wildmen][tribe]</li>
    <li>questName->近くの[wildmen][tribe]</li>
  </VFET_OpportunitySite_WildMen.questNameRules.rulesStrings>
```
