# カラー設定：Primary Black + Deep Blue

Academic Pagesの構造を維持したまま、次の4色を役割別に設定しています。

| Role | 用途 | Hex |
|---|---|---|
| Primary | 本文、通常リンク、標準UI、Primaryボタン | `#000000` |
| Deep Blue | ヘッダー、ページタイトル、主要見出し、主要アクセント | `#11114b` |
| White | 本文背景、ヘッダー文字 | `#FFFFFF` |
| Pale Blue | フッター、補助背景、区切り線、表見出し | `#E7EEF5` |

**PrimaryとDeep Blueは別の色・別の役割です。** Primaryだけを黒にし、Deep Blueはサイトの識別色として残しています。

## 主要ファイル

- `_config.yml`: `site_theme: "emoto"`
- `_sass/theme/_emoto_light.scss`
- `_sass/theme/_emoto_dark.scss`
- `assets/css/main.scss`

## 表示上の役割

- 上部ナビゲーション：Deep Blue
- ページタイトル、セクション見出し：Deep Blue
- 本文、通常リンク、サイドバー情報：Primary Black
- Primaryボタン：Black（hover時はDeep Blue）
- 背景：White
- フッター、区切り線、補助面：Pale Blue

色変更時は、上記3ファイルを同時に修正してください。片方だけ変更すると、CSS変数と個別指定の役割が不整合になります。
