# Firebase Local Emulator on Docker sample

FirebaseエミュレーターをDockerで実行するサンプル。

## 有効にしているFirebase Local Emulatorの機能

- Firebase Authentication エミュレーター
- Firestore エミュレーター
- Firebase Storage エミュレーター
- Firebase Pub/Sub エミュレーター
- Firebase エミュレーター UI

## 使用方法

### 前提条件

- Docker
- Docker Compose

### エミュレーターの起動

```bash
docker-compose up
```

### アクセス情報

- **エミュレーター UI**: http://localhost:4000
- **Authentication**: localhost:9099
- **Firestore**: localhost:8080
- **Storage**: localhost:9199
- **Pub/Sub**: localhost:8085

## データの永続化

エミュレーターのデータは `exports` フォルダに保存され、再起動時に自動的に復元する。

## プロジェクト構成

```
├── compose.yaml          # Docker Compose設定
├── Dockerfile            # Firebaseエミュレーター用Dockerfile
├── firebase/
│   ├── firebase.json     # Firebase設定
│   ├── firestore.rules   # Firestoreセキュリティルール
│   ├── firestore.indexes.json  # Firestoreインデックス
│   ├── storage.rules     # Storageセキュリティルール
│   └── exports/          # エミュレーターから保存されるデータ置き場
└── README.md
```