class Img < Shoes::Widget
  def initialize(*opts, &blk)
    @opts = opts
    @blk = blk
  end
end
