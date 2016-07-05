import XMonad
import XMonad.Config.Xfce
import XMonad.Util.EZConfig
import XMonad.Actions.PhysicalScreens
main = xmonad $ xfceConfig
       { terminal = "xfce-terminal"
       , modMask = mod4Mask
       }
       `additionalKeys`
       [ ((mod4Mask, xK_w), viewScreen 0)
       , ((mod4Mask, xK_e), viewScreen 1)
       , ((mod4Mask, xK_r), viewScreen 2)
       , ((mod4Mask .|. shiftMask, xK_w), sendToScreen 0)
       , ((mod4Mask .|. shiftMask, xK_e), sendToScreen 1)
       , ((mod4Mask .|. shiftMask, xK_r), sendToScreen 2)
       ]