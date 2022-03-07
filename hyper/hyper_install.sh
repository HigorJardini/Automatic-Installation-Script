#!/bin/bash
# Runnig with bash ... no sh ...

#Hyper theme
hyper i hyper-aura-theme

#Hyper Plugins
hyper i hyper-search
hyper i hyper-pane
hyper i hypercwd
hyper i hyper-active-tab

#Example to configuration active tabs

#module.exports = {
#  config: {
#    // rest of the config
#    activeTab: '🐳'
#  }
#  // rest of the file
#}

hyper i hyperline

#Zsh config

#Location directory
which zsh

#Copy and insert on config file from hyper
#Example
#module.exports = {
#  config: {
#    // rest of the config
#    shell: '/usr/local/bin/zsh',
#  }
#  // rest of the file
#}

cp .hyper.example .hyper.js
mv -i .hyper.js ~/.hyper.js
