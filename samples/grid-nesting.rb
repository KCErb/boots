#see http://getbootstrap.com/css/#grid-nesting
# nested dark purple is achieved by just hard coding it
# in the future this will be handled by an alpha channel. 
# I'd rather be able to give a column a name and set the style
# for items of the same name . . .

require_relative '../lib/boots'

Shoes.app width: 1200 do
  extend Boots

  style(Shoes::Para, size: 14, margin_left: 15, margin_right: 15, margin_top: 10, margin_bottom: 10)

  row do
    col md: 9 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para "Level 1: .col-md-9"
      row do
        col md: 6 do
          background rgb(196, 185, 208)
          border rgb(196, 185, 208)
          para "Level 2: .col-md-6"
        end
        col md: 6 do
          background rgb(196, 185, 208)
          border rgb(187, 176, 202)
          para "Level 2: .col-md-6"
        end
      end #row
    end
  end

end
