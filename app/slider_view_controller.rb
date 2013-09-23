# -*- coding: utf-8 -*-
class SwitchViewController < UIViewController
  COLORS = {'white' => UIColor.whiteColor, 'black' => UIColor.blackColor}
  def viewDidLoad
    super

    view.backgroundColor = COLORS['black']
    view.accessibilityLabel = 'black'

    @uiswitch = UISwitch.alloc.initWithFrame(CGRectMake(100, 100, 100, 100))
    @uiswitch.accessibilityLabel = 'switch black or white'
    @uiswitch.addTarget(self, action:'changeColor', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@uiswitch)
  end

  def changeColor
    if @uiswitch.on?
      view.backgroundColor = COLORS['white']
      view.accessibilityLabel = 'white'
    else
      view.backgroundColor = COLORS['black']
      view.accessibilityLabel = 'black'
    end
  end
end
