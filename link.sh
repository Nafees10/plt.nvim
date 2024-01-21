#!/bin/bash
for d in ftdetect ftplugin syntax; do
	[ -d "$HOME/.config/nvim/$d" ] || mkdir "$HOME/.config/nvim/$d";
	(
		cd "$(dirname $0)/$d";
		ln -s "$PWD/zuko.vim" "$HOME/.config/nvim/$d/zuko.vim"
	)
done
