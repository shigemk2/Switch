# -*- coding: utf-8 -*-
class SwitchViewController < UIViewController
  COLORS = {
    'white' => UIColor.whiteColor, 'black' => UIColor.blackColor,
    'red' => UIColor.redColor
  }
  def viewDidLoad
    super

    view.backgroundColor = COLORS['black']
    view.accessibilityLabel = 'black'

    @uiswitch_white = UISwitch.alloc.initWithFrame(CGRectMake(100, 100, 100, 100))
    @uiswitch_white.onTintColor = UIColor.whiteColor
    @uiswitch_white.accessibilityLabel = 'switch black or white'
    @uiswitch_white.addTarget(self, action:'changeColorWhite', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@uiswitch_white)

    @uiswitch_red = UISwitch.alloc.initWithFrame(CGRectMake(100, 140, 100, 100))
    @uiswitch_red.onTintColor = UIColor.redColor
    @uiswitch_red.accessibilityLabel = 'switch black or red'
    @uiswitch_red.addTarget(self, action:'changeColorRed', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@uiswitch_red)
  end

  def changeColorWhite
    if @uiswitch_white.on?
      self.disableAllSwitch
      @uiswitch_white.enabled = true
      view.backgroundColor    = COLORS['white']
      view.accessibilityLabel = 'white'
    else
      view.backgroundColor = COLORS['black']
      view.accessibilityLabel = 'black'
    end
    self.checkSwitch
  end

  def changeColorRed
    if @uiswitch_red.on?
      self.disableAllSwitch
      @uiswitch_red.enabled   = true
      view.backgroundColor    = COLORS['red']
      view.accessibilityLabel = 'red'
    else
      view.backgroundColor = COLORS['black']
      view.accessibilityLabel = 'black'
    end
    self.checkSwitch
  end

  def checkSwitch
    if not (@uiswitch_white.on? or @uiswitch_red.on?)
      self.enableAllSwitch
    end
  end

  def enableAllSwitch
    @uiswitch_white.enabled = true
    @uiswitch_red.enabled   = true
  end

  def disableAllSwitch
    @uiswitch_white.enabled = false
    @uiswitch_red.enabled   = false
  end
end
