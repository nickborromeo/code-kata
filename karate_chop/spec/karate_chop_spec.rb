require 'karate_chop'

describe Chop do
  
  class TestClass 
  end

  before(:all) do
    @klass = TestClass.new
    @klass.extend(Chop)
  end

  describe "chop" do
    it { @klass.chop(3,[]).should == -1 }
    it { @klass.chop(3,[1]).should == -1 }
    it { @klass.chop(1,[1]).should == 0 }

    it { @klass.chop(1, [1,3,5]).should == 0 }
    it { @klass.chop(3, [1,3,5]).should == 1 }
    it { @klass.chop(5, [1,3,5]).should == 2 }
    it { @klass.chop(0, [1,3,5]).should == -1 }
    it { @klass.chop(2, [1,3,5]).should == -1 }
    it { @klass.chop(4, [1,3,5]).should == -1 }
    it { @klass.chop(6, [1,3,5]).should == -1 }

    it { @klass.chop(1, [1,3,5,7]).should == 0 }
    it { @klass.chop(3, [1,3,5,7]).should == 1 }
    it { @klass.chop(5, [1,3,5,7]).should == 2 }
    it { @klass.chop(7, [1,3,5,7]).should == 3 }
    it { @klass.chop(0, [1,3,5,7]).should == -1 }
    it { @klass.chop(2, [1,3,5,7]).should == -1 }
    it { @klass.chop(4, [1,3,5,7]).should == -1 }
    it { @klass.chop(6, [1,3,5,7]).should == -1 }
    it { @klass.chop(8, [1,3,5,7]).should == -1 }

  end
end

