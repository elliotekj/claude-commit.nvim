# claude-commit.nvim (beta)

AI-powered commit message suggestions using Claude.

## Features

- **Auto-suggest**: Generates commit messages from staged changes
- **Tab to accept**: Virtual text overlay with simple acceptance
- **Non-intrusive**: Only activates on empty commit messages

## Requirements

- Neovim 0.10+
- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code)

## Installation

```lua
{
  "elliotekj/claude-commit.nvim",
  ft = "gitcommit",
  config = function()
    require("claude-commit").setup({
      auto_suggest = true,       -- default
      keybinding = "<leader>cc", -- optional, no default
      timeout = 10000,          -- default
    })
  end,
}
```

## Usage

Commit messages will be auto-suggested by default. You can also use `:ClaudeCommitSuggest` or configure `keybinding`

## License

MIT
