class FakeLogger
  attr_reader :status, :message

  %w[debug info warn error fatal].each do |method_name|
    define_method(method_name) do |args|
      set_attributes(method_name.to_sym, args)
      args
    end
  end

private
  def set_attributes(sym, message)
    @status  = sym
    @message = message
  end
end
