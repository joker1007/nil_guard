class NilGuard::Guardable < BasicObject
  def initialize(obj)
    @obj = obj
  end

  def method_missing(method_name, *args, &block)
    return @obj if @obj.nil?

    if @obj.respond_to?(method_name)
      @obj.__send__(method_name, *args, &block)
    else
      @obj.send(:method_missing, method_name, *args, &block)
    end
  end
end
