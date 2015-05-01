require 'spec_helper'

describe RGrep do
  # This is executed once before all tests
  before :all do
    # Instance variable accessible everywhere
    @rgrep = RGrep.new({:pattern => 'pattern', :text => "pattern\npattern"})
  end

  describe '#new' do
    it 'takes no parameters and returns an instance of RGrep' do
      @rgrep.should be_an_instance_of RGrep
    end
  end

  describe '#version' do
    it 'returns the correct version number' do
      @rgrep.version.should eql 'RGrep (BSD) 0.0.1'
    end
  end

end
