# cloud-native-subcommittee-demo

Google Cloudエンタープライズユーザー会クラウドネイティブ分科会のLTで触れたサンプルコード置き場です

## フォルダ階層

```bash
.
├── kubernetes #簡単なマニフェスト
│   └── pod.yaml
└── terraform #GKEクラスターデプロイ用のTerraformコード
    └── main.tf
```

## デモの内容

- 事前準備
  - GCP側でWorkload Identity連携の設定をしておく
  - GKEクラスターを構築しておく
- 当日のデモでやること
  - `feature/add-manifests`→`main`へのPRをマージする
  - ワークフローを眺めてマージされることを確認する
  - ワークフロー定義のステップごとに何してるか解説
