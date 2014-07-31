Shoes.app do
  stack do
    background red
    30.times do
      stack {para "yay"}
    end
  end
  flow attach: Window, height: 40, top: app.height - 40 do
    background black
    para "footer!", stroke: white
  end
end
