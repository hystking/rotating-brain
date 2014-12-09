globalParam = require "global-param"
document.body.innerHTML += "<span>#{globalParam.meta.title}</span>"
    
render = ->
  t = Date.now() / 1000
  rotate = "rotateX(#{t*40}deg)rotateZ(#{t*20}deg)"
  for i in [1..34]
    transform = rotate+"translateZ(#{-i*4.6}px)"
    slice = window["slice#{i}"]
    slice.style.WebkitTransform = transform
  requestAnimationFrame render
render()
