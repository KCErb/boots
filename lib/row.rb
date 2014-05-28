module Boots
  class Row < Shoes::Widget
    # A row is really just a flow. We tack on margins to center it in the screen if it isn't nested

    def initialize(opts = {}, &blk)
      @parent = parent
      @opts = opts
      @blk = blk

      get_vals
      create_row
      set_resize if not_nested?
    end

    private

    def set_resize
      resize do
        get_vals
        @row.margin = margin_array
      end
    end

    def create_row
      @row = flow do
        @blk.call
      end

      @row.margin = margin_array if not_nested?
    end

    def not_nested?
      internal_app = app.instance_variable_get("@__app__")
      top_slot = internal_app.top_slot
      parent = @row.parent
      parent == top_slot
    end

    def get_vals
      @app_width = app.width
      @content_width = content_width
      @margin_array = margin_array
    end

    def content_width
      case
      when @app_width >= SCREEN_LG_MIN
        CONTENT_WIDTH_LG
      when @app_width >= SCREEN_MD_MIN 
        CONTENT_WIDTH_MD
      when @app_width >= SCREEN_SM_MIN 
        CONTENT_WIDTH_SM
      when @app_width < SCREEN_SM_MIN 
        :xs
      end
    end

    def margin_array
      margin = @content_width == :xs ? 0 : (@app_width - @content_width)/2
      [margin, 0, margin, 0]
    end
  end
end
