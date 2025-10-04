---
applyTo: 1.[0-9]\**\Languages\Japanese (日本語)\**\*.xml
---

# Translation samples

翻訳後のサンプルをいくつか示します。

## 原文の言語の判断基準

`<!-- zz: xxx -->` というコメントタグ内に記載されている `zz` で判断する

|`zz`|言語|
|---|---|
|EN|英語|
|KO|韓国語|
|CN|中国語(簡体字)|
|TW|中国語(繁体字)|

### 原文内の単一の実改行

```xml
<!-- EN: Talon shuns technology and progress. Real strength lies in cultural foundations, and only
by rejecting rapid progress will you be able to gain the respect of the spirits. Rapid technology
unlocks will invoke bad events. -->
<VFET_TalonTribal.description>タロンは技術や進歩を避けます。本当の強さは文化的基盤にあり、急速な進歩を拒むことでのみ精霊たちの尊敬を得ることができます。技術を急速に解放すると悪いイベントが発生します。</VFET_TalonTribal.description>
```

### 原文内の連続する実改行

```xml
<!-- EN: Your savage ways have granted you a bad reputation, and mending relations with other factions will take a long time.

Note: Since you start without any supplies and with every other faction hostile, this is a difficult scenario. -->
<VFES_Bandits.description>あなた方の荒っぽい振る舞いは悪評を招き、他派閥との関係修復には長い時間が必要です。\n\n注意: 装備なしで開始し、他派閥がすべて敵対しているため非常に難易度の高いシナリオです。</VFES_Bandits.description>
```

### 原文内の `\n`

```xml
<!-- EN: They are concerned with the practical matters of trade, trust, and survival.\n\nThis particular group holds civil behavior in high regard. -->
<SettlerCivil.description>彼らは交易、信頼、そして生存という実利的な事柄に関心を持っています。\n\nこの特定の集団は市民的な振る舞いを高く重んじます。</SettlerCivil.description>
```

### 原文に `<li>`タグがある

```xml
<!-- EN:
  <li>talkedabout->spoke about</li>
  <li>talkedabout->gabbed about</li>
  <li>talkedabout->talked about</li>
  <li>talkedabout->joked about</li>
  <li>talkedabout->quipped about</li>
-->
<VFET_OpportunitySite_WildMen.questNameRules.rulesStrings>
  <li>talkedabout->一言交わした</li>
  <li>talkedabout->語った</li>
  <li>talkedabout->おしゃべりした</li>
  <li>talkedabout->話した</li>
  <li>talkedabout->冗談を言った</li>
  <li>talkedabout->軽口を叩いた</li>
</VFET_OpportunitySite_WildMen.questNameRules.rulesStrings>
```

### 原文内のプレースホルダー  (`[xxxx]`, `{yyyy}`)

```xml
<!-- EN: {0} has put up a bounty for {PAWN_nameDef}. -->
<VFET_WildMen.messageDefendersAttacking>{0} は {PAWN_nameDef} に懸賞金をかけました。</VFET_WildMen.messageDefendersAttacking>
```

```xml
<!-- EN: Quest expired: [resolvedQuestName] -->
<VFES_CaravanRaid.root.nodes.WorldObjectTimeout.node.nodes.Letter.label.slateRef>クエスト期限切れ: [resolvedQuestName]</VFES_CaravanRaid.root.nodes.WorldObjectTimeout.node.nodes.Letter.label.slateRef>
```
