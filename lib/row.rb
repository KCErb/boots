module Boots
  class Row < Shoes::Widget
    def initialize(opts = {}, &blk)
      @opts = opts
      @blk = blk

      f = flow margin_left: side_width do
        blk.call
      end

      resize do
        f.margin_left = side_width
      end


    end

    private

    def side_width
      case
      when app.width >= SCREEN_LG_MIN
        (app.width - CONTENT_WIDTH_LG)/2
      when app.width >= SCREEN_MD_MIN 
        (app.width - CONTENT_WIDTH_MD)/2
      when app.width >= SCREEN_SM_MIN 
        (app.width - CONTENT_WIDTH_SM)/2
      when app.width < SCREEN_SM_MIN 
        0
      end
    end

  end
end
