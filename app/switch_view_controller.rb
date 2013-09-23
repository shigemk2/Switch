# -*- coding: utf-8 -*-
class SwitchViewController < UIViewController
  COLORS = {
    'white' => UIColor.whiteColor, 'black' => UIColor.blackColor,
    'red' => UIColor.redColor, 'magenta' => UIColor.magentaColor,
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

    @uiswitch_magenta = UISwitch.alloc.initWithFrame(CGRectMake(100, 180, 100, 100))
    @uiswitch_magenta.onTintColor = UIColor.magentaColor
    @uiswitch_magenta.accessibilityLabel = 'switch black or magenta'
    @uiswitch_magenta.addTarget(self, action:'changeColorMagenta', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@uiswitch_magenta)
  end

  def changeColorWhite
    if @uiswitch_white.on?
      self.disableAllSwitch
      @uiswitch_white.enabled = true
      view.backgroundColor    = COLORS['white']
      view.accessibilityLabel = 'white'
    else
      view.backgroundColor    = COLORS['black']
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
      view.backgroundColor    = COLORS['black']
      view.accessibilityLabel = 'black'
    end
    self.checkSwitch
  end

  def changeColorMagenta
    if @uiswitch_magenta.on?
      self.disableAllSwitch
      @uiswitch_magenta.enabled = true
      view.backgroundColor      = COLORS['magenta']
      view.accessibilityLabel   = 'magenta'
    else
      view.backgroundColor    = COLORS['black']
      view.accessibilityLabel = 'black'
    end
    self.checkSwitch
  end

  def checkSwitch
    if not (@uiswitch_white.on? or @uiswitch_red.on? or @uiswitch_magenta.on?)
      self.enableAllSwitch
    end
  end

  def enableAllSwitch
    @uiswitch_white.enabled   = true
    @uiswitch_red.enabled     = true
    @uiswitch_magenta.enabled = true
  end

  def disableAllSwitch
    @uiswitch_white.enabled   = false
    @uiswitch_red.enabled     = false
    @uiswitch_magenta.enabled = false
  end
end
