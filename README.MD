Koubae's Neovim Configs
=======================



Check out different branches for different versions and setups.

### Initial installation requirements

* Install NerdFonts --> https://www.nerdfonts.com/
* EnvyCodeR 

**Install Ripgrep**

```bash
# ripgrep
sudo apt update
sudo apt install ripgrep

```


#### Presetups


* [AstroNvim](https://astronvim.com/)
* [LazyVim](https://www.lazyvim.org/installation)


### Components following Arturo Filio


* Video: [Neovim setup for Golang](https://www.youtube.com/watch?v=-ONbfnVc_v8) By [Arturo Filio Villa](https://www.youtube.com/@arturfil)



* Repos: 
	* [arturfil/nvim-alternative](https://github.com/arturfil/nvim-alternative)
	* [arturfil/nvim-yt](https://github.com/arturfil/nvim-yt)


* Setup Steps:
	

- Plugin manager: [lazy.nvim](https://lazy.folke.io/)
- Vim Options mapping `lua/vim-options.lua`
- Theme (as example [catppuccin](https://catppuccin.com/) but could be any)
- Install ripgrep + Google nerdfont (for emoji)
- File Explorer: [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- File Navigator: [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- Dressing (new file): [dressing.nvim](https://github.com/stevearc/dressing.nvim)
- Fuzzy Finder: Telescope [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Auto brakets closer: autopairs [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Git status: Lua Line https://github.com/nvim-lualine/lualine.nvim
- highlighting: Treesitter [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autocompletion: [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- LSP manager: Mason [mason.nvim](https://github.com/mason-org/mason.nvim)
- LSP server configurations: nvim-lspconfig [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- formatter: [conform.nvim](https://github.com/stevearc/conform.nvim)

* Backup properly all current settings to that I can easely rollback to what I setup months ago
	* Backup name: `backup-2026-03-17-firs-stream` (also `vim-backup-20260317-223549` this was done from ChatGTP command with ALL backup!!!)
* Research
	* AI (ChatGPT) - Ask how to setup NeoVim as complete begginer for GO
	* Google Search

* Vim Motions
	* Learn different shortcuts for navigation

#### Further Reading

* [Benefits of relativenumber?](https://www.reddit.com/r/neovim/comments/y0c9vk/benefits_of_relativenumber/)
* [What is your reason for not using relative line numbers?](https://www.reddit.com/r/vim/comments/orgvsn/what_is_your_reason_for_not_using_relative_line/)

* [Is learning lazy vim worth it?](https://www.reddit.com/r/neovim/comments/16y46pm/is_learning_lazy_vim_worth_it/)



* Check this out => [NeoVim#checklist (Programming-CookBook)](https://github.com/Koubae/Programming-CookBook/tree/master/IDE%20-%20TextEditors/Vim_Family/NeoVim#checklist)



Notes
---------

Fresh start

Neovim + lazy.nvim, then: add only six things
* LSP
* completion
* treesitter
* formatter
* fuzzy finder
* small statusline

* What is called that "server" language that does static checking and so on?
	* Answer: is called LSP "Language Server Protocol (LSP)" [neovim lsp docs](https://neovim.io/doc/user/lsp/)
* Explorer
* Search + Replace
* Side Folder Tab
* Inline Terminal
* NERDTree


### Tutorials or Vids

* ThePrimeagen



### Notes (Programming-CookBook)


* [IDE -- Vim Family 🖋️](https://github.com/Koubae/Programming-CookBook/commit/f086bc00595362709e95d1735f0b4452cef179c5)
* [Vim videos + commands](https://github.com/Koubae/Programming-CookBook/commit/3e56fed5ff6e54cc6f08c20fd7bf71a6039da280)
* [vimrcs](https://github.com/Koubae/Programming-CookBook/commit/cf860e547e677709216ae225f1da0181ee4f55a1)
* [vim commands](https://github.com/Koubae/Programming-CookBook/commit/062dec5451a491c400cffbcca34ddd3a52da9190)
* [Vim Motions](https://github.com/Koubae/Programming-CookBook/commit/fdc421d2f9d1e5dd9590a27c431b1c2214e558b2)
* [Neovim checklist](https://github.com/Koubae/Programming-CookBook/commit/4136f271d7269f42fcdda81c96e772baa00c8d18)
* [neovim stuff](https://github.com/Koubae/Programming-CookBook/commit/8b504f61db87d8c1ca2c33eedaa72b30f20c8b39)
* [Neovim configurations](https://github.com/Koubae/Programming-CookBook/commit/6b54e6b311e9656b18ae114f8d9dfd580a937484)
* [Vim commands](https://github.com/Koubae/Programming-CookBook/commit/918ca34823c2c4842a3e1cf61f35c4fb3400c903)



