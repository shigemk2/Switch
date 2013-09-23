# -*- coding: utf-8 -*-
class SwitchViewController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.blackColor
    @uiswitch = UISwitch.alloc.initWithFrame(CGRectMake(100, 100, 100, 100))
    @uiswitch.addTarget(self, action:'changeColor', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@uiswitch)
  end

  def changeColor
    if @uiswitch.on?
      self.view.backgroundColor = UIColor.whiteColor
    else
      self.view.backgroundColor = UIColor.blackColor
    end
  end
end
