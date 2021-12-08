terraform {
  backend "gcs" {
    #　tfstateを管理するCloud Storageのバケットを記述する
    # 以下は仮の名称
    bucket = "cloud-native-subcommittee-demo-tfstate"
  }
}
