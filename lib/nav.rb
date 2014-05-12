module Boots
  class Nav < Shoes::Widget
    def initialize(opts = {}, &blk)
      @opts = opts
      @blk = blk
      flow top: 0, height: 40 do
        blk.call
      end
    end
  end
end
