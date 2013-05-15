require 'blazing-unicorn/recipes/rolling_restart'

describe Blazing::Recipe::RollingRestart do

  it 'is a blazing recipe' do
    Blazing::Recipe::RollingRestart.superclass.should be Blazing::Recipe
  end

  describe 'run' do

    before :each do
      @pid = 123
      Process.should_receive(:kill).with("USR2", @pid)
      @recipe = Blazing::Recipe::RollingRestart.new
      @recipe.stub(:info)
    end

    it 'should call send USR2 signal to the pid' do
      @recipe.should_receive(:pid).and_return(@pid)
      @recipe.run
    end

    it 'should allow custom pid file' do
      @recipe.should_receive(:pid).and_return(@pid)
      pid_file = 'tmp/unicorn.pid'
      @recipe.run :pid_file => pid_file
      @recipe.send(:pid_file).should eq(pid_file)
    end

  end

end
