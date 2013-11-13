player =
  x: 10
  y: 25
  stats:
    score: 1337
  update: (speed) ->
    @x += speed
    @stats.score += 5