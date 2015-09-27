# copy-file-contents package

Copy file contents to clipboard right from the tree view's context menu!

![Screenshot][1]

## Usage

Open the context menu (**right click**) for any file on the tree view pane and select the `Copy contents` option to copy them to the system clipboard.

## OS Support

Current version supports **Windows**, **OS X** and **Linux** platforms!

#### Linux

The plugin relies on the [**xclip**][2] command in order to interact with the system clipboard. This package is usually shipped with most Linux distributions, so please make sure you have it installed in case the plugin isn't working.

## Roadmap

Planned features for future releases:
* Keybindings support
* "Copy contents" option on application menu
* "Copy contents" option on editor's context menu
* Proper support for copying image files

[1]: https://raw.githubusercontent.com/lieko/atom-copy-file-contents/master/doc/screenshot.png
[2]: http://sourceforge.net/projects/xclip
