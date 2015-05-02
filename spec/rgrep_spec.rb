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

  describe '#get_match' do
    it 'returns true for a match' do
      @rgrep.get_match.should eql true
    end
  end

  describe '#get_exact_match' do
    it 'returns true only for an exact match' do
      @rgrep.get_exact_match.should eql false
    end
  end

  describe '#get_quiet_match' do
    it 'returns true as soon as the first match is found' do
      @rgrep.get_quiet_match.should eql true
    end
  end

end
