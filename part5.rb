class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+"_history"
    class_eval %Q{def #{attr_name}=(val)
      if @#{attr_name}_history.nil? 
        @#{attr_name}_history = Array.new
        @#{attr_name}_history << @#{attr_name}
      end
      @#{attr_name} = val; 
      @#{attr_name}_history << @#{attr_name}
    end}
  end
end
