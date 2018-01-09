import
  nimgame2/graphic,
  nimgame2/input,
  nimgame2/gui/button


type
  SquareButton* = ref object of GuiButton
  action*: proc

proc init*(btn: SquareButton, graphic: Graphic, image: Graphic = nil) =
  GuiButton(btn).init(graphic, image)


proc newSquareButton*(graphic: Graphic, image: Graphic = nil): SquareButton =
  new result
  result.init(graphic, image)


method onClick*(btn: SquareButton, mb: MouseButton) =
  action()
