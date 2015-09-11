CopyFileContentView = require './copy-file-content-view'
{CompositeDisposable} = require 'atom'

module.exports = CopyFileContent =
  copyFileContentView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @copyFileContentView = new CopyFileContentView(state.copyFileContentViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @copyFileContentView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'copy-file-content:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @copyFileContentView.destroy()

  serialize: ->
    copyFileContentViewState: @copyFileContentView.serialize()

  toggle: ->
    console.log 'CopyFileContent was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
