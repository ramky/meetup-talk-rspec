class Integer
  def factorial
    raise if self < 1
    self >= 1 ? (1..self).reduce(&:*) : 1
  end
end
