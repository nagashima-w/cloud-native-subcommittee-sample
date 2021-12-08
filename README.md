# cloud-native-subcommittee-demo

Google Cloudエンタープライズユーザー会クラウドネイティブ分科会のLTで紹介したサンプルコード置き場です

## 実現していること

- `terraform/`が更新されたときに自動でGCPに対して`terraform apply`を実行
- `kubernetes/`が更新されたときに自動でGKEクラスター上で`kubectl apply`を実行

## フォルダ階層

```bash
.
├── .github
│   └── workflows #GitHub Actionsのワークフロー定義
├── kubernetes #サンプルマニフェスト
└── terraform #GKEクラスターデプロイ用のTerraformコード
```

## 事前に必要なこと

- GCP側でWorkload Identity連携を有効にする
  - [こちら](https://github.com/google-github-actions/auth#setting-up-workload-identity-federation)を参考に設定してください
