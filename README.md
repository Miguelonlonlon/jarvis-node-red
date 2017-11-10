<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Use IBM [node-red]https://nodered.org/ for build complex commands

## Requirement
[NodeJS]https://nodejs.org/ https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
IBM [node-red]https://nodered.org/ https://nodered.org/docs/getting-started/installation

if you wish uses samples:
node-red-contrib-hangouts https://flows.nodered.org/node/node-red-contrib-hangouts

## Usage
Install plugin in Jarvis and set uri of node-red server.
(because it captures everything, i think it's best to put this plugin last in the sort list of plugins)
Write your flow based on the sample (flow-jarvis.json)

Example with the sample
```
You: send?
Jarvis: Your message is posted!
You: check?
Jarvis: Check is successfuly
```

## Author
[Flexy2dd](https://github.com/flexy2dd)
