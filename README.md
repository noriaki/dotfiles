# dotfiles

macOS / Linux (WSL2) 対応の dotfiles。[chezmoi](https://www.chezmoi.io/) で管理。

## 特徴

- **XDG Base Directory 準拠**: ホームディレクトリをクリーンに保つ
- **クロスプラットフォーム**: macOS (Intel/Apple Silicon) / Linux 対応
- **モダンなツールチェーン**: mise, Zinit, Starship

## 含まれる設定

- Zsh (Zinit + Starship)
- Git
- Homebrew (Brewfile)
- mise (Node.js, Python, Ruby)
- gh CLI

## インストール

```bash
# Homebrew インストール後
brew install chezmoi
chezmoi init --apply noriaki
```

## 更新

```bash
chezmoi update
```

## ライセンス

MIT
