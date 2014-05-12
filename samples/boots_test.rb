require_relative 'boots'
Shoes.app width: 1200 do

  style(Shoes::Para, size: 16)

 # nav do
 #   background black
 #   para "Boots!", stroke: white
 # end
    row do
      12.times do
        col md: 1 do
          background rgb(223, 217, 229)
          border rgb(187, 176, 202)
          para "col-md-1"
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
