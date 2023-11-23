
local doubleTapTerm  = require('doubleTapTerm')
local doubleTapWindow  = require('doubleTapWindow')


hs.hotkey.bind({"alt"}, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = (max.w/3)*2
  f.h = max.h
  hs.window.animationDuration=0
  win:setFrame(f)
end)

hs.hotkey.bind({"alt"}, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = max.w / 3
  f.h = max.h
  f.x = max.x + ((max.w)-f.w)
  f.y = max.y
  hs.window.animationDuration=0
  win:setFrame(f)
end)

-- bind hotkey
hs.hotkey.bind({'alt'}, '3', function()
  -- get the focused window
  local win = hs.window.focusedWindow()
  -- get the screen where the focused window is displayed, a.k.a. current screen
  local screen = win:screen()
  -- compute the unitRect of the focused window relative to the current screen
  -- and move the window to the next screen setting the same unitRect 
  win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)

hs.hotkey.bind({'alt'}, '§', function()
  -- alert("You double tapped cmd!")
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if f.x == max.x then
    f.x = max.x + (0.25 * max.w)
    f.w = 0.5 * max.w
    -- f.y = max.y + (0.1 * max.h)
    -- f.h = 0.8 * max.h
  else
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  end
  hs.window.animationDuration=0
  win:setFrame(f)
end)