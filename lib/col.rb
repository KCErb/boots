module Boots
  class Col < Shoes::Widget
    def initialize(opts = {}, &blk)
      s = stack width: col_width(opts) do
        flow do
          blk.call
        end
      end

      resize do
        s.width = col_width(opts) if size_transition?
        p s.width if size_transition?
      end
    end

    private
   
    def col_width(opts)
      case
      when app.width >= SCREEN_LG_MIN && opts[:lg]
        opts[:lg] * unit_width
      when app.width >= SCREEN_MD_MIN && opts[:md]
        opts[:md] * unit_width
      when app.width >= SCREEN_SM_MIN && opts[:sm]
        opts[:sm] * unit_width
      when app.width < SCREEN_SM_MIN && opts[:xs]
        opts[:xs] * unit_width
      else
        12 * unit_width #unless unit_width is 1.0! Then col_width should be 1.0 too!!! 
      end
    end

    def unit_width
      case
      when app.width >= SCREEN_LG_MIN
        @curr_size = "lg"
        COL_WIDTH_LG
      when app.width >= SCREEN_MD_MIN 
        @curr_size = "md"
        COL_WIDTH_MD
      when app.width >= SCREEN_SM_MIN 
        @curr_size = "sm"
        COL_WIDTH_SM
      when app.width < SCREEN_SM_MIN 
        @curr_size = "xs"
        1/12.0
      end
    end

    def size_transition?
      @prev_size = @curr_size
      unit_width
      @new_size = @curr_size
      @prev_size != @curr_size
    end

  end
end
