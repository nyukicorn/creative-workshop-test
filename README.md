# Creative Workshop Test

## 概要
複数MCPツールを連携させたクリエイティブ制作の自動化テストプロジェクト

## アーキテクチャ
- **ローカル**: Claude Code → 設計・YAML作成
- **GitHub Actions**: 実装・実行・デプロイ

## 構成
```
creative-workshop-test/
├── .github/workflows/     # GitHub Actions設定
├── configs/              # MCP設定ファイル
├── prompts/             # 各種プロンプト
├── docs/               # ドキュメント
├── assets/             # 生成素材
└── dist/              # 最終出力
```

## 実行フロー
1. 素材生成 (Kamui Code MCP)
2. 統合処理 (Blender MCP → Three.js MCP)
3. 品質チェック (Claude Code SDK)
4. デプロイ (自動)

## 展開予定
成功時は汎用化して本格展開