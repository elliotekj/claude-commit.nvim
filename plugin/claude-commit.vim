" claude-commit.vim - Neovim plugin for AI-powered commit messages
" Author: [Your Name]
" License: MIT

if exists('g:loaded_claude_commit')
  finish
endif
let g:loaded_claude_commit = 1

" Ensure we have required Neovim version
if !has('nvim-0.10.0')
  echohl WarningMsg
  echomsg 'claude-commit.nvim requires Neovim 0.10.0 or later'
  echohl None
  finish
endif

" Set up autocommands for commit file types
augroup ClaudeCommit
  autocmd!
  autocmd FileType gitcommit lua require('claude-commit').setup_commit_buffer()
augroup END

" User commands
command! ClaudeCommitSuggest lua require('claude-commit').suggest_commit_message()
command! ClaudeCommitSetup lua require('claude-commit').setup()