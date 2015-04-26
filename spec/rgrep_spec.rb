require 'spec_helper'

describe RGrep do
  before :each do
    @rgrep = RGrep.new
  end
end

describe '#new' do
  it 'takes no parameters and returns an instance of RGrep' do
    @rgrep.should be nil
  end
end
