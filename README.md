# Homebrew Protobuf 31.1 Tap

這個 Homebrew Tap 提供 `protobuf` 版本 31.1 的安裝方式。

## 使用方式

```bash
brew tap tutorabc-kelvinchang/protobuf31 https://github.com/tutorabc-kelvinchang/homebrew-protobuf31.git
brew install tutorabc-kelvinchang/protobuf31/protobuf@31.1
```

## 環境設定
安裝完成後，將下列設定加入你的 shell 啟動檔（例如 `~/.zshrc` 或 `~/.bashrc`），更新路徑與編譯相關參數：

```bash
export PATH="/opt/homebrew/opt/protobuf@31.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/protobuf@31.1/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/protobuf@31.1/include $CPPFLAGS"
```

套用設定（例如 `source ~/.zshrc`）後即可使用 `protoc` 等工具。
