# Git認証設定手順

## Personal Access Token作成

1. **GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)**
2. **「Generate new token (classic)」をクリック**
3. **設定**：
   - Note: `creative-workshop-test`
   - Expiration: `No expiration` または適切な期限
   - Select scopes: `repo`, `workflow`, `write:packages`
4. **「Generate token」をクリック**
5. **トークンをコピー**（ghp_xxx...）

## 認証設定コマンド

```bash
# 方法1: 一時的な認証
git remote set-url origin https://ghp_YOUR_TOKEN@github.com/nyukicorn/creative-workshop-test.git

# 方法2: グローバル認証設定
git config --global credential.helper store

# その後プッシュ実行
git push -u origin main
```

## 次のステップ

認証設定後、以下を実行：

1. `git push -u origin main` - プッシュ実行
2. GitHub Secrets設定
3. GitHub Actions有効化
4. 初回ワークフロー実行

**重要**: トークンは安全に保管してください！