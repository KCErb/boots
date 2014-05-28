#see http://getbootstrap.com/css/#grid-offsetting
# Broken due to background resizing in Shoes

require_relative 'boots'

Shoes.app width: 1200 do
  extend Boots

  style(Shoes::Para, size: 14, margin_left: 15, margin_right: 15, margin_top: 10, margin_bottom: 10)

  row do
    col md: 4 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-4"
    end
    col md: 4, md_offset: 4 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-4 .col-md-offset-4"
    end
  end

  row do
    col md: 3, md_offset: 3 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-3 .col-md-offset-3"
    end
    col md: 3, md_offset: 3 do 
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-3 .col-md-offset-3"
    end
  end

  row do
    col md: 6, md_offset: 3 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para ".col-md-6 .col-md-offset-3"
    end
  end

end

