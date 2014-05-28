Shoes.app do
  internal_app = app.instance_variable_get("@__app__")
  @top_slot = internal_app.top_slot
  @a = flow do
    para "flow1"
    @b = flow do
      para "flow 2"
      @c = flow do
        para "flow 3"
      end
    end
  end

   para @top_slot == @a.parent
   para @top_slot == @b.parent
   para @top_slot == @c.parent
end
