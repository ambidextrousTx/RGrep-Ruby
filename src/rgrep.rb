class RGrep
  attr_accessor :pattern, :text
  def initialize args
    @pattern = args[:pattern] unless args[:pattern].nil?
    @text = args[:text] unless args[:text].nil?
  end

  def version
    return 'RGrep (BSD) 0.0.1'
  end

end
