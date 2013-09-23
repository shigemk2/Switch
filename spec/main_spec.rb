describe "Application 'Switch'" do
  tests SwitchViewController

  it "default background color" do
    view("black").should.not.be.nil
  end

  it "flick switch once" do
    flick 'switch black or white', :from => :left, :to => :right
    view("white").should.not.be.nil
  end

  it "flick switch twice" do
    flick 'switch black or white', :from => :left, :to => :right
    flick 'switch black or white', :from => :right, :to => :left
    view("black").should.not.be.nil
  end
end
