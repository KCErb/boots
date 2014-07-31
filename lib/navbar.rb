module Boots
  
  attr_reader :color, :height, :fixed

  class Navbar < Shoes::Widget
   
    def initialize(opts = {}, &blk)
      @opts = opts
      @blk = blk

      init_styles
      create_bar
    end

    private

    def init_styles
      @color  = opts[:color]  || black
      @height = opts[:height] || 40
      @fixed  = opts[:fixed]  || true  
    end

    def create_bar
      @bar = flow height: @height do
        background @color
        @blk.call
      end
      @bar.style attach: Shoes::Window if @fixed
    end

  end

end
