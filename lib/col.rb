module Boots
  class Col < Shoes::Widget
    def initialize(opts = {}, &blk)
      @opts = opts
      @blk = blk

      get_vals
      create_col
      set_resize
    end

    private

    def create_col
      @col = flow width: @col_width + @offset, margin_left: @offset do
        @blk.call
      end
    end
    
    def set_resize
      resize do
        if size_transition?
          @col.width = @col_width + @offset
          @col.margin_left = @offset
        end
      end
    end
    
    def size_transition?
      @prev_size = @curr_size
      get_vals
      @prev_size != @curr_size
    end

    def get_vals
      @app_width = app.width
      @col_width = col_width
      @offset    = offset
      @curr_size = curr_size
    end

    def curr_size
      case
      when @app_width >= SCREEN_LG_MIN
        :lg
      when @app_width >= SCREEN_MD_MIN
        :md
      when @app_width >= SCREEN_SM_MIN
        :sm
      when @app_width < SCREEN_SM_MIN
        :xs
      end

    end

    def col_width
      case
      when @app_width >= SCREEN_LG_MIN && @opts[:lg]
        @opts[:lg] / 12.0
      when @app_width >= SCREEN_MD_MIN && @opts[:md]
        @opts[:md] / 12.0
      when @app_width >= SCREEN_SM_MIN && @opts[:sm]
        @opts[:sm] / 12.0
      when @app_width < SCREEN_SM_MIN && @opts[:xs]
        @opts[:xs] / 12.0
      else
        1.0
      end
    end

    def offset
      case
      when @app_width >= SCREEN_LG_MIN && @opts[:lg_offset]
        @opts[:lg_offset] / 12.0
      when @app_width >= SCREEN_MD_MIN && @opts[:md_offset]
        @opts[:md_offset] / 12.0
      when @app_width >= SCREEN_SM_MIN && @opts[:sm_offset]
        @opts[:sm_offset] / 12.0
      when @app_width < SCREEN_SM_MIN && @opts[:xs_offset]
        @opts[:xs_offset] / 12.0
      else
        0
      end
    end
  end
end
