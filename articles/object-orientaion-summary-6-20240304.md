---
title: "オブジェクト指向のこころ 第6章の振り返り"
emoji: "📗"
type: "idea" # tech: 技術記事 / idea: アイデア
topics: [オブジェクト指向, デザインパターン, Facade]
published: true
---
## はじめに
みなさんこんにちは、[やすのり](https://twitter.com/Bjp78xoSUd89227)です。

『オブジェクト指向のこころ』の第6章を読み終わりましたので、
自身の理解度や考えをまとめるためにまとめ問題の回答を残しておこうと思います。
※『それは違うよ！』ということがあれば遠慮なくご指摘いただければ幸いです🙇

## 第6章　Facadeパターン

### 基礎問題
#### Q1. Facadeの定義は？
#### A：既存システムの複雑なインタフェースをまとめ、それをクライアント側で１つのインタフェースとして使用できるようにしたもの。

#### Q2. Facadeパターンの目的とは？
#### A：既存システムの使用方法を簡略化したい。

#### Q3. Facadeパターンの因果関係とその例は？
#### A：簡略化したサブシステムの使用方法を提供する。使用者はすべて知っておかなくても、Facadeの使用方法だけ知っていれば特定機能を使用できる。
- フロントエンドからバックエンドへリクエスト送信しデータ取得する際に、必要データのみを返却するAPIが使用できる。

#### Q4. Facadeパターンにおいて、クライアントがサブシステムと協調する方法とは？
#### A：Facadeが提供しているメソッドを使用すること。
- Facade内部では特定機能を実現するためのサブシステム群を呼び出している。

#### Q5. Facadeパターンを使用すると、通常システム全体にアクセスできるようになるか？
#### A：アクセスできない。
- Facadeパターンはあくまでも`限定的な箇所をパターン化`することでシステム使用の簡略化という恩恵を受けられるため。

### 応用問題

#### Q１. GoFはFacadeパターンの目的を『サブシステム内に存在している複数のインタフェース群に対する、統一したインタフェースを提供する。Facadeは高レベルのインタフェースを定義することにより、サブシステムを容易に使えるようにするものである』と述べた。
- その意味とは？
- またその例は？
#### A(意味)：機能を実現するために必要なインタフェースを個々で使用せず、１つのインタフェースに集約させる。その統一インタフェースの使用方法さえ知っていれば、使用者は数あるインタフェースの使用方法を知らなくても機能を実現できるようになる。
#### A(例)：Next.jsでUI実装する場合、tsx(jsx)ファイルにHTMLタグで構成した要素をreturnの中に記述すれば、Next.jsが内部処理をした上でクライアント側に実際のHTMLが描画される。

#### Q2. 実生活におけるFacadeの例とは？
#### A：金融機関システムへ、自身の口座の入出金等をするためのインタフェース。

## まとめ
いよいよ実務で使える`パターン`の話になってきました。
書籍内でも言われていますが、実際にパターンの名称は知らなくても似たようなことはしたことがあったなと思います。