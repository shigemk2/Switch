describe "Application 'Switch'" do
  tests SwitchViewController

  it "default background color" do
    view("black").should.not.be.nil
  end

  it "flick white switch once" do
    flick 'switch black or white', :from => :left, :to => :right
    view("white").should.not.be.nil
  end

  it "flick white switch twice" do
    flick 'switch black or white', :from => :left, :to => :right
    flick 'switch black or white', :from => :right, :to => :left
    view("black").should.not.be.nil
  end

  it "flick red switch once" do
    flick 'switch black or red', :from => :left, :to => :right
    view("red").should.not.be.nil
  end

  it "flick red switch twice" do
    flick 'switch black or red', :from => :left, :to => :right
    flick 'switch black or red', :from => :right, :to => :left
    view("black").should.not.be.nil
  end

  it "flick magenta switch once" do
    flick 'switch black or magenta', :from => :left, :to => :right
    view("magenta").should.not.be.nil
  end

  it "flick magenta switch twice" do
    flick 'switch black or magenta', :from => :left, :to => :right
    flick 'switch black or magenta', :from => :right, :to => :left
    view("black").should.not.be.nil
  end

  it "flick white but other color can't switch" do
    flick 'switch black or white', :from => :left, :to => :right
    flick 'switch black or red', :from => :left, :to => :right
    flick 'switch black or magenta', :from => :left, :to => :right

    view("white").should.not.be.nil
  end

  it "flick red but other color can't switch" do
    flick 'switch black or red', :from => :left, :to => :right
    flick 'switch black or white', :from => :left, :to => :right
    flick 'switch black or magenta', :from => :left, :to => :right

    view("red").should.not.be.nil
  end

  it "flick magenta but other color can't switch" do
    flick 'switch black or magenta', :from => :left, :to => :right
    flick 'switch black or red', :from => :left, :to => :right
    flick 'switch black or white', :from => :left, :to => :right

    view("magenta").should.not.be.nil
  end
end
