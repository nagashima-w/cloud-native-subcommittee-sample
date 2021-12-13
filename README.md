# cloud-native-subcommittee-demo

Google Cloudエンタープライズユーザー会クラウドネイティブ分科会のLTで紹介したサンプルコード置き場です

## 免責事項

架空のGoogle Cloudプロジェクトやサービスアカウントを記述しているため、このサンプルコードをそのまま使っても動作しません  
このサンプルコードを使用して動作しない、あるいは障害が発生した場合でも対応できかねますので、自己責任にてご利用ください

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
