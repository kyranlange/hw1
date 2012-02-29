class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+"_history"
    class_eval %Q{def #{attr_name}=(val)
      if @#{attr_name}_history.nil? 
        @#{attr_name}_history = Array.new
      end
      @#{attr_name}_history << @#{attr_name}
      @#{attr_name} = val; 
    end}
  end
end





class Foo
  attr_accessor_with_history :bar
end
f = Foo.new
f.bar = 1
f.bar = 2
print f.bar_history


f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'
print f.bar_history
