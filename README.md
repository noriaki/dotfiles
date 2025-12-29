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
- mise (Node.js, Python, Ruby, pnpm, claude-code)
- gh CLI

## インストール

### ワンライナー（新規マシン）

```bash
# macOS (Apple Silicon)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
  eval "$(/opt/homebrew/bin/brew shellenv)" && \
  brew install chezmoi && \
  chezmoi init --apply noriaki && \
  exec zsh

# macOS (Intel)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
  eval "$(/usr/local/bin/brew shellenv)" && \
  brew install chezmoi && \
  chezmoi init --apply noriaki && \
  exec zsh

# Linux (WSL2)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
  brew install chezmoi && \
  chezmoi init --apply noriaki && \
  exec zsh
```

### 段階的セットアップ

```bash
# 1. Homebrew インストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Homebrew を PATH に追加（セッション用）
eval "$(/opt/homebrew/bin/brew shellenv)"      # Apple Silicon
# eval "$(/usr/local/bin/brew shellenv)"       # Intel Mac
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"  # Linux

# 3. chezmoi インストール & 適用
brew install chezmoi
chezmoi init --apply noriaki

# 4. シェル再起動
exec zsh
```

## 更新

```bash
chezmoi update
```

## 便利なコマンド

```bash
# 変更の確認（dry-run）
chezmoi diff

# ソースディレクトリを開く
chezmoi cd

# 設定の再適用
chezmoi apply
```

## ライセンス

MIT
