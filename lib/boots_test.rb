#see http://getbootstrap.com/css/#grid-nesting

require_relative 'boots'

Shoes.app width: 1200 do

  style(Shoes::Para, size: 14, margin_left: 15, margin_right: 15, margin_top: 10, margin_bottom: 10)

  row do
    col md: 9 do
      background rgb(223, 217, 229)
      border rgb(187, 176, 202)
      para "Level 1: .col-md-9"

      row do
        col md: 6 do
          background rgb(223, 217, 229)
          border rgb(187, 176, 202)
          para "Level 2: .col-md-6"
        end
        col md: 6 do
          background rgb(223, 217, 229)
          border rgb(187, 176, 202)
          para "Level 2: .col-md-6"
        end
      end #row
    end #col
  end #row

end
