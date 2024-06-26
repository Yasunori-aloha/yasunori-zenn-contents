---
title: "オブジェクト指向のこころ 第13章の振り返り"
emoji: "📗"
type: "idea" # tech: 技術記事 / idea: アイデア
topics: [オブジェクト指向, デザインパターン]
published: true
---
## はじめに
みなさんこんにちは、[やすのり](https://twitter.com/Bjp78xoSUd89227)です。

『オブジェクト指向のこころ』の11章を読み終わりましたので、
自身の理解度や考えをまとめるためにまとめ問題の回答を残しておこうと思います。
※『`それは違うよ！`』ということがあれば遠慮なくご指摘いただければ幸いです🙇

## 第13章　CAD/CAMの問題をパターンによって解決する

### 基礎問題
#### Q1. この章で解説した、パターンを用いたソフトウェア設計の3つの手順とは？
1. パターンの洗い出し
    - 問題領域に存在するパターンを見つけ出す作業。
2. パターンの分析＆適用
    - 分析するパターン毎に下記4つの手順を実行する。
      1. パターンの並び替え
      2. パターンの選択と設計の拡張
      3. 追加のパターンの洗い出し
      4. 繰り返し

3. 詳細の追加
    - 必要に応じて設計に詳細を追加する。[^1]
    [^1]: メソッドやクラス定義の拡張も実施。


---

#### Q2. 『コンテキスト』とは？
本書曰く『なんらかのものをその中に存在させる。または発生させる、互いに関連し合う条件、すなわち環境や設定のこと』と定義されている。

つまり言い換えると、**『あるパターンの中に、別のパターンを発生させられる条件・状況のこと』**

---

#### Q3. 『最年長のパターン』を定義すると？
システム内にある『**他パターンのコンテキストを最も構築しているパターン**』のこと

---

#### Q4. 2つのパターンのうち、どちらが『年長』であるかを調べるための2つの規則とは？
- あるパターンが他のパターンの振る舞い方を定義しているか？
- 2つのパターンが互いに影響を与え合っているか？

---

#### Q5. パターンの一般的構造の定義とは？また、それはいつ使うのか？
- 一般的構造
  - クラス図のことである。
- 使用するタイミング
  - 実際の問題を解決する際に、クラス図のクラス名などを置き換えて使用する。

---

### 応用問題
#### Q1. パターンを用いれば、必ず問題を定義できるのか？できない場合、他に何が必要か？
定義できない。

パターンを用いた問題解決は、『**問題領域全体をパターンの観点から理解できる場合**』に限るため。
パターンを用いたいのであれば、**問題領域内に存在する概念間の関連を洗い出すことで、他の部分を肉付け**していく必要がある。[^2]
[^2]: これをするには『共通性/可変性分析』が使用できる。

---

#### Q2. CAD/CAMの問題において、Abstract Factoryは『最年長』のパターンから除外された理由は？
Abstract Factoryパターンは『オブジェクトを実体化』させるためのパターンであり、『オブジェクトを実体化するためのパターン』が決定した後に使用するパターンである。

なので、そもそもコンテキストを構築していないため『最年長のパターン』からは除外している。

---

#### Q3. CAD/CAMの問題において、BridgeがAdapterよりも年長であると判断された理由は？
『**BridgeはAdapterを使用する側のパターンであるため**』

Bridgeは『抽象的側面』と『実装』を分けてクラス設計を実装するが、その中の『実装』部分でAdapterを使用している。
つまりBridgeはAdapterを使用(内包)しており、『Adapterのコンテキストを構築している』ことになるため。
