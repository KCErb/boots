Shoes.app do
  stack width: 200 do
    background green
    para "container", stroke: white
    flow do
      stack width: 0.5 do
        background purple
        para "level 2", stroke: white
      end
      stack width: 0.5 do
        background purple
        para "level 22", stroke: white
      end
    end
  end
end
