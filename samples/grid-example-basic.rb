#see http://getbootstrap.com/css/#grid-example-basic

require_relative '../lib/boots'

Shoes.app width: 1200 do

  style(Shoes::Para, size: 14, margin_left: 15, margin_right: 15, margin_top: 10, margin_bottom: 10)

  row do
    12.times do
      col md: 1 do
        background rgb(223, 217, 229)
        border rgb(187, 176, 202)
        para ".col-md-1"
      end
    end
  end

  row do
    col md: 8 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-8"
    end
    col md: 4 do 
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-4"
    end
  end

  row do
    3.times do
      col md: 4 do
        background rgb(223, 217, 229)
        border rgb(187, 176, 202)
        para ".col-md-4"
      end
    end
  end

  row do
    2.times do
      col md: 6 do
        background rgb(223, 217, 229)
        border rgb(187, 176, 202)
        para ".col-md-6"
      end
    end
  end
end

