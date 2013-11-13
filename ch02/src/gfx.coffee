gfx =
  init: ->
    canvasDOM = document.getElementById "game"
    @ctx = canvasDOM.getContext "2d"
    @ctx?

game =
  init: ->
    if not gfx.init()
      alert "Could not set up game canvas!"
      return # abort the game

# Start the game running
game.init()

init: ->
  canvas = document.querySelector "#game"
  @ctx = canvas?.getContext? "2d"
  return false if not @ctx
  @w = canvas.width
  @h = canvas.height
  true

gfx.ctx.clearRect 0, 0, gfx.w, gfx.h

clear: -> @ctx.clearRect 0, 0, @w, @h
