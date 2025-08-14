# 🚀 Claude Code Evolution System

<div align="center">

![Claude Code Evolution](https://img.shields.io/badge/Claude%20Code-Evolution%20System-blue)
![Version](https://img.shields.io/badge/version-1.0.0-green)
![License](https://img.shields.io/badge/license-MIT-purple)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)

**🧬 Claude Codeのための自己進化型開発システム**

[インストール](#-インストール) • [クイックスタート](#-クイックスタート) • [ドキュメント](./docs) • [例](./examples) • [貢献](./CONTRIBUTING.md)

</div>

---

## 🌟 概要

10,000以上のファイルを扱う大規模開発でも破綻しない、自己学習・進化型のClaude Code開発システムです。コンテキストを維持しながら、経験から学習し、自律的に改善していきます。

### ✨ 主な機能

- **🧠 自己学習システム** - すべてのインタラクションからパターンを自動検出し学習
- **📊 スケーラブルアーキテクチャ** - コンテキストオーバーフローなしで巨大コードベースを処理
- **🤖 マルチエージェント対応** - タスク別の専門エージェント（セキュリティ、パフォーマンス、テスト）
- **📚 エージェント別RAG** - 各エージェントが独自の知識ベースを維持
- **🔄 自動進化** - 使用パターンに基づいてシステムが改善・進化
- **📋 タスク管理** - 自動優先順位付けを備えた組み込みバックログシステム

## 📁 リポジトリ構造

```
claude-code-evolution/
├── 📦 core/                      # コアシステムファイル
│   ├── init-system.sh           # ワンコマンドセットアップ
│   ├── pattern-detector.py      # パターン検出エンジン
│   ├── memory-manager.py        # コンテキスト管理
│   └── evolution-engine.py      # 自己進化ロジック
│
├── 🤖 agents/                    # エージェントテンプレート
│   ├── templates/               # ベースエージェントテンプレート
│   └── personalities/           # パーソナリティエージェント
│
├── 🧪 patterns/                  # パターンライブラリ
│   ├── language-specific/       # 言語別パターン
│   ├── architectural/           # アーキテクチャパターン
│   └── antipatterns/            # アンチパターン
│
├── 📋 templates/                 # プロジェクトテンプレート
├── 🔧 commands/                  # カスタムコマンド
├── 🪝 hooks/                     # システムフック
├── 📊 rag/                       # RAG設定
├── 🛠️ tools/                     # ユーティリティツール
├── 📚 docs/                      # ドキュメント
├── 📝 examples/                  # サンプルプロジェクト
└── 🧪 tests/                     # テストスイート
```

## 🚀 インストール

### 前提条件

- Node.js 18+ 
- Python 3.9+
- Git
- Claude Code CLI
- (オプション) 高度な機能用のDocker

### クイックインストール

```bash
# リポジトリをクローン
git clone https://github.com/ebiyy/claude-code-evolution.git
cd claude-code-evolution

# インストーラーを実行
./install.sh

# プロジェクトで初期化
claude-evolution init --domain web --project my-app
```

### 手動インストール

```bash
# 1. リポジトリをクローン
git clone https://github.com/ebiyy/claude-code-evolution.git

# 2. 依存関係をインストール
cd claude-code-evolution
npm install
pip install -r requirements.txt

# 3. Claude Code統合をセットアップ
./core/init-system.sh

# 4. ドメインを設定
./scripts/configure-domain.sh [web|api|ml|mobile]
```

## 🎯 クイックスタート

### 基本セットアップ

```bash
# 新しいプロジェクトを初期化
claude-evolution init my-project

# Evolution Systemと共にClaude Codeを起動
claude-evolution start

# システムステータスを確認
claude-evolution status
```

### 最初のタスク

```bash
# Claude Code内で
/next-task              # 最適な次のタスクを取得
/learn                  # 新しい学習を記録
/evolve                 # 進化ステータスを確認
/compress               # コンテキストを最適化
```

## 🧠 コアコンセプト

### 1. メモリ階層

```yaml
L1 (Hot): アクティブタスク + 現在のコンテキスト
L2 (Warm): 最近のパターン + 決定事項
L3 (Cold): アーカイブされた知識（検索可能）
```

### 2. エージェント専門化

各エージェントには以下があります：
- **専門知識ベース** (RAG)
- **カスタムパーソナリティ/アプローチ**
- **学習履歴**
- **進化パス**

### 3. パターン進化

```mermaid
graph LR
    A[経験] --> B[パターン検出]
    B --> C[検証]
    C --> D[一般化]
    D --> E[統合]
    E --> F[進化]
```

## 🔌 統合

### サポートされるベクターデータベース

- **Pinecone** - 本番環境推奨
- **ChromaDB** - ローカル開発に最適
- **Weaviate** - ハイブリッド検索に最適
- **Qdrant** - 高性能オプション

### モデルプロバイダー

- **Anthropic Claude** - プライマリ
- **OpenAI** - 代替埋め込み
- **ローカルモデル** - Ollamaサポート
- **カスタム** - 独自のものを持ち込む

## 📊 パフォーマンス

| メトリック | 基本Claude | Evolution System使用 |
|-----------|------------|-------------------|
| コンテキスト制限 | 200Kトークン | 無制限（階層化） |
| 学習 | なし | 継続的 |
| パターン | 手動 | 自動検出 |
| タスク成功率 | 70% | 95%以上 |
| コスト | $$$$ | $（最適化済み） |

## 🛣️ ロードマップ

### フェーズ1：基盤（現在）
- ✅ 基本進化システム
- ✅ パターン検出
- ✅ マルチエージェントサポート
- ✅ タスク管理

### フェーズ2：インテリジェンス（2025年Q2）
- 🔄 エージェント別RAG
- 🔄 クロスエージェント学習
- ⏳ 分散知識ベース
- ⏳ 高度な進化メトリクス

### フェーズ3：自律性（2025年Q3）
- ⏳ 自己組織化エージェント
- ⏳ 創発的行動
- ⏳ 予測的アシスタンス
- ⏳ メタ学習

## 🤝 貢献

貢献大歓迎です！ガイドラインは[CONTRIBUTING.md](./CONTRIBUTING.md)をご覧ください。

### 貢献方法

- 🐛 バグ報告
- 💡 機能提案
- 🤖 新しいエージェントの作成
- 📚 パターンの追加
- 📝 ドキュメントの改善
- 🧪 テストの作成

## 📄 ライセンス

MITライセンス - 詳細は[LICENSE](./LICENSE)を参照

## 💬 コミュニティ

- [GitHub Discussions](https://github.com/ebiyy/claude-code-evolution/discussions)
- [Issues & Feedback](https://github.com/ebiyy/claude-code-evolution/issues)

---

<div align="center">

**開発者による、開発者のために、❤️をこめて作られました**

[バグ報告](https://github.com/ebiyy/claude-code-evolution/issues) • [機能リクエスト](https://github.com/ebiyy/claude-code-evolution/issues)

</div>