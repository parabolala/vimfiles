" This file is intended for bootstrapping all the modules before using the real
" .vimrc. Run it as
" $ vim -u plug_install.vimrc
let no_plugin_maps=1
source ./plugins.vim

PlugInstall

qa
