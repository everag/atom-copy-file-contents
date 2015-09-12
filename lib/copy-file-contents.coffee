###
 * Copy File Contents - Atom package
 * https://github.com/lieko/atom-copy-file-contents
 *
 * Copyright 2015, Everton Agner Ramos
 * https://github.com/lieko
 *
 * Licensed under the MIT license:
 * http://opensource.org/licenses/MIT
###

copy = (filepath) ->
	console.log "[copy-file-contents] copy() filepath=\"#{filepath}\""
	require('child_process').exec "clip < #{filepath}"

module.exports =
	activate: (state) ->
		atom.commands.add '.tree-view .selected',
			'copy-file-contents:copy': (event) ->
				copy @getPath?() || @getModel?().getPath?()
