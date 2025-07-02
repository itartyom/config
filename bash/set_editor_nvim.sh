#!/bin/sh

# Добавить в конец ~/.bashrc экспорт переменных EDITOR и VISUAL
echo 'export EDITOR="nvim"' >> "$HOME/.bashrc"
echo 'export VISUAL="nvim"' >> "$HOME/.bashrc"
