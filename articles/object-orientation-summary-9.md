---
title: "オブジェクト指向のこころ 第9章の振り返り"
emoji: "📗"
type: "idea" # tech: 技術記事 / idea: アイデア
topics: [オブジェクト指向, デザインパターン, Strategyパターン]
published: true
---
## はじめに
みなさんこんにちは、[やすのり](https://twitter.com/Bjp78xoSUd89227)です。

『オブジェクト指向のこころ』の第9章を読み終わりましたので、
自身の理解度や考えをまとめるためにまとめ問題の回答を残しておこうと思います。
※『`それは違うよ！`』ということがあれば遠慮なくご指摘いただければ幸いです🙇

## 第9章　Strategyパターン

### 基礎問題
#### Q1. 新たな要求を取り扱う方法として、どの様な方法があるか？
##### A:
- コピー＆ペーストを使用
- switch文やif文を使用して個別に対応
- 関数ポインタや委譲を使用
- 継承を使用
- 機能全体を新規オブジェクトに委譲

---

#### Q2. GoFが提案した、変更に取り組む際の基本原則を3つ挙げよ。
##### A:
- 実装を用いてプログラミングするのではなく、インタフェースを用いてプログラミングをする。
- クラス継承よりもオブジェクトの集約を多用する
- あなたの設計において、何を流動的要素とするべきかを考察する。
このアプローチは、再設計の原因に着目することとは正反対になっている。
`計変更を強いる可能性のあるものが何か`を考えるのではなく、`再設計せずに何を変更可能にするか`を考える。
ここで着目しているのは、`流動的概念のカプセル化`であり、多くのデザインパターンのテーマともなっている。

---

#### Q3. Strategyパターンの目的とは何か？
##### A:いろんな業務上のルールやアルゴリズムを、それが発生するコンテキストにあわせて切り替えられる様になる。

---

#### Q4. Strategyパターンの因果関係とは何か？
##### A:switch文やif文を削減できる。それぞれ定義したアルゴリズムは同じ方法で起動する必要がある。

---

### 応用問題
#### Q1. GoFは『設計において、何を流動的要素とするべきかを考察する』ことを示唆しています。このことと再設計の原因に着目することとは、どの様に違っているか？
##### A:再設計の原因に着目するということは『変更内容を正確に予測しようとしている』ことになるが、`どんな変更が加わるのかを予測することはできない`。しかし`どこに変更が発生しそうかを予測して、その箇所をカプセル化する`ことを伝えている。

---

#### Q2. コピー＆ペーストにおける問題とは何か？
##### A:コードに仕様変更が発生した際にコピペした箇所が１００箇所あれば、100箇所とも手動でコード修正する必要があり、1つでも修正漏れが発生するとバグが発生してしまう。

---

#### Q3. 『switchの泥沼』とは何か？
##### A:メソッド内などでswitch文を使用した分岐処理をしていると、1つ仕様変更があるたびにそのswitch文の箇所を修正することになり、コードもどんどん肥大化し保守性・可読性が低下する。
- また1つの処理内で様々な条件が増えていくのでテストも作成しづらいものになってしまう。

---

#### Q4. 流動的要素を取り扱う際、デザインパターンのアプローチを採用する利点は何か？
##### A:
- コード間の結合度を低くできる。
- 特定責務を持つクラスを作成するので変更が最小限ででき、何か不具合が発生した際も原因特定が容易になる。

---

#### Q5. 流動的要素を取り扱う際に、クラス継承アプローチよりもオブジェクトの集約アプローチの方が優れているのは何故か？
##### A:1つの処理の中で`流動的要素`が複数ある場合、クラス継承では深い階層のクラス構造が出来上がってしまうため。
- 1つ目の流動的要素を解決するためにクラス継承(extendClassA)を実施したが、2つ目の流動的要素に対応するため更に特化した継承クラス(extendClassA-1, extendClassA-2...)を作成する必要が出てくる。
    - 流動的要素が増えればそれだけ特化型継承クラスが作成されてしまう。
