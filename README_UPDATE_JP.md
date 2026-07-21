# Masakazu Emoto — Academic Pages更新パッケージ

このZIPは、既存の `Masakazu-Emoto/Masakazu-Emoto.github.io` に対して、Google Sitesの内容と新しい配色を反映するための差し替え一式です。独立HTMLサイトへ置き換えるものではなく、既存の **Academic Pages / Jekyll構造を維持**します。

## 収録内容

- `_pages/about.md`: Home
- `_pages/research.html`: Working Papers / Work in Progress
- `_pages/publications.html`: 査読付き論文
- `_pages/teaching.html`: Teaching
- `_pages/cv.md`: Web CV
- `_publications/*.md`: 研究成果の個別ページ
- `_teaching/*.md`: 担当科目の個別ページ
- `_data/navigation.yml`: 上部ナビゲーション
- `_includes/research-single.html`: Research一覧表示部品
- `_config.yml`: サイト・著者・コレクション・テーマ設定
- `_sass/theme/_emoto_light.scss`: ライトテーマ
- `_sass/theme/_emoto_dark.scss`: ダークテーマ
- `assets/css/main.scss`: 配色とレイアウト上書き

## カラー設定

- Primary: Black `#000000`
- Deep Blue: `#11114b`
- White: `#FFFFFF`
- Pale Blue: `#E7EEF5`

PrimaryとDeep Blueは統合していません。本文と通常UIは黒、ヘッダーと主要見出しはDeep Blueです。詳細は `README_COLOR_JP.md` を参照してください。

## Windowsでの反映方法

PowerShellで、既存リポジトリの親フォルダから実行します。

```powershell
git clone https://github.com/Masakazu-Emoto/Masakazu-Emoto.github.io.git
Expand-Archive .\masakazu-emoto-academicpages-black-primary-deepblue.zip -DestinationPath .\homepage-update
.\homepage-update\masakazu-emoto-academicpages-black-primary-deepblue\apply_update.ps1 -Target .\Masakazu-Emoto.github.io
cd .\Masakazu-Emoto.github.io
git add .
git commit -m "Update Academic Pages content and colour theme"
git push origin master
```

デフォルトブランチが `main` の場合は、最後を `git push origin main` に変更してください。

## macOS / Linuxでの反映方法

```bash
git clone https://github.com/Masakazu-Emoto/Masakazu-Emoto.github.io.git
unzip masakazu-emoto-academicpages-black-primary-deepblue.zip -d homepage-update
chmod +x homepage-update/masakazu-emoto-academicpages-black-primary-deepblue/apply_update.sh
homepage-update/masakazu-emoto-academicpages-black-primary-deepblue/apply_update.sh Masakazu-Emoto.github.io
cd Masakazu-Emoto.github.io
git add .
git commit -m "Update Academic Pages content and colour theme"
git push origin master
```

## 手動反映

ZIP内の各フォルダ・ファイルを、GitHubリポジトリの同名階層へ上書きしてください。その後、`DELETE_THESE_SAMPLE_FILES.txt`に記載されたテンプレート用サンプルを削除します。

## 公開確認

1. GitHubの `Actions` または `Pages` でビルド成功を確認します。
2. `https://masakazu-emoto.github.io/` を開きます。
3. キャッシュが残る場合は `Ctrl + F5` で強制再読み込みします。

## 注意

- `images/profile.png` は既存リポジトリ内の画像を使用します。このZIPには本人写真を含めていません。
- GitHubへのcommit・pushには、利用者側のGitHub認証が必要です。
- 適用前に既存リポジトリのバックアップまたはブランチ作成を推奨します。
