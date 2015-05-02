class RGrep
  attr_accessor :pattern, :text
  def initialize args
    @pattern = args[:pattern] unless args[:pattern].nil?
    @text = args[:text] unless args[:text].nil?
  end

  def version
    return 'RGrep (BSD) 0.0.1'
  end

  def get_match
    return @text.include? @pattern
  end

  def get_exact_match
    return @text.eql? @pattern
  end

  def get_quiet_match
    text = @text.split("\n")
    for line in text
      if line.include? @pattern
        return true
      end
    end
    return false
  end

end
