require 'spec_helper'

describe RGrep do
  # This is executed once before all tests
  before :all do
    # Instance variable accessible everywhere
    @rgrep = RGrep.new
  end

  describe '#new' do
    it 'takes no parameters and returns an instance of RGrep' do
      @rgrep.should be_an_instance_of RGrep
    end
  end

end
