-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.g.mapleader = " "

local keymap = vim.keymap

--  insert mode ----
keymap.set("i", "jk", "<ESC>")

-- visual mode ----
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

--  normal ----
--  window
-- keymap.set("n", "<leader>sv", "<C-w>v")
-- keymap.set("n", "<leader>sh", "<C-w>s")

-- cancel highlight
-- keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- switch buffer

keymap.set("n", "<C-]>", "<cmd>bnext<CR>")
keymap.set("n", "<M-Right>", "<cmd>bnext<CR>")
keymap.set("n", "<C-[>", "<cmd>bprevious<CR>")
keymap.set("n", "<M-Left>", "<cmd>bprevious<CR>")
-- keymap.set("n", "<leader>c", ":BufferLinePickClose <CR>")
-- keymap.set("n", "<leader>;'", ":BufferLineCloseOthers <CR>")
-- keymap.set("n", "<C-<>", ":BufferLineCloseLeft <CR>")
-- keymap.set("n", "<C->>", ":BufferLineCloseRight <CR>")

keymap.set("n", ";", ":")

keymap.set({ "n", "v", "o" }, "L", "$")
-- keymap.set("v", "L", "$")
-- keymap.set("n", "H", "^")
keymap.set({ "n", "v", "o" }, "H", "^")

-- keymap.set("n", "<leader>nv", ":Navbuddy<CR>")
keymap.set("t", "<ESC>", "<C-\\><C-n>")
keymap.set("t", "[", "<Up>")
keymap.set("t", "]", "<Down>")
