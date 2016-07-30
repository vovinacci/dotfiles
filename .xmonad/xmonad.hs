-- xmonad config by vovin@lurk.kiev.ua
-- Last updated Sun Jul 31 00:25:04 EEST 2016

-- Imports
-- Core
import XMonad

-- Hooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName

-- Layouts


-- Other
import XMonad.Util.Run
import XMonad.Util.EZConfig

-- Basic variables
myTerm = "urxvt"

-- XMonad defaults
myDefaults = defaultConfig {
          terminal 		= myTerm
        , workspaces 		= myWorkspaces
        , modMask 		= mod4Mask			-- Rebind Mod to the Windows key
        , layoutHook 		= avoidStruts $ layoutHook defaultConfig
        , manageHook 		= myManageHook
        , startupHook 		= setWMName "LG3D"		-- Java application compatibility
        , borderWidth		= 2
        , normalBorderColor 	= "gray75"
        , focusedBorderColor 	= "orange"        
        } `additionalKeys` myKeys `removeKeys` myRemoveKeys

-- Define some XF86 keys
xF86AudioRaiseVolume = 0x1008ff13
xF86AudioLowerVolume = 0x1008ff11
xF86AudioMute = 0x1008ff12
xF86HomePage = 0x1008ff18
xF86MonBrightnessUp = 0x1008ff02
xF86MonBrightnessDown = 0x1008ff03
xF86Display = 0x1008ff59

-- Keybindings
myKeys = [
          ((mod4Mask, xK_Return), spawn myTerm)							-- spawn terminal
        , ((controlMask, xK_space), spawn "exe=`dmenu_run -b -nb black -nf yellow -sf yellow -p 'Run: '` && eval \"exec $exe\"")	-- spawn dmenu
        , ((mod4Mask, xK_x), safeSpawn "xscreensaver-command" ["-lock"])			-- lock screen
        , ((0, xF86Display), spawn "sleep 1 && xset dpms force off")				-- switch off backlight
        , ((mod4Mask, xK_f), spawn "firefox")							-- spawn firefox
        , ((mod4Mask, xK_s), spawn "skype")							-- spawn skype
        , ((mod4Mask, xK_r), spawn "FBReader")							-- spawn fbreader
        , ((mod4Mask, xK_c), spawn "xcalc")							-- spawn xcalc
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")				-- window screenshot
        , ((0, xK_Print), spawn "scrot")							-- desktop screenshot
        , ((0, xF86AudioMute), safeSpawn "amixer" ["set", "Master", "toggle"])			-- toggle audio mute
        , ((0, xF86AudioLowerVolume), safeSpawn "amixer" ["-q", "set", "Master", "5%-"])	-- audio volume -5%
        , ((0, xF86AudioRaiseVolume), safeSpawn "amixer" ["-q", "set", "Master", "5%+"])	-- audio volume +5%
        , ((0, xF86MonBrightnessDown), safeSpawn "xbacklight" ["-dec", "25"])			-- screen brightness -25%
        , ((0, xF86MonBrightnessUp), safeSpawn "xbacklight" ["-inc", "25"])			-- screen brightness +25%
        , ((mod4Mask, xK_F4), kill)								-- to kill app
        , ((mod4Mask, xK_b), sendMessage ToggleStruts)						-- toggle status bar
        ]

-- Remove default keybindings
myRemoveKeys = [
          ( mod4Mask .|. shiftMask, xK_Return)							-- remove initial terminal binding
        , ( mod4Mask, xK_p)									-- remove initial dmenu_run binding
        ]

-- Define worskspaces
myWorkspaces :: [String]
myWorkspaces = ["1:term", "2:web", "3:mail", "4:im", "5", "6:media", "7:library", "8:vm", "9", "0:*"]

-- Layout hooks


-- Manage hooks
myManageHook = composeAll
         [
         -- General behaviours 
           isFullscreen				--> doFullFloat
         , isDialog				--> doCenterFloat
         -- Floating
         , className =? "feh"			--> doFloat
         , className =? "Gtk-theme-switch2"	--> doFloat
         , className =? "Nm-connection-editor"	--> doFloat
         , className =? "Xpdf"			--> doFloat
         , className =? "Gimp"			--> doFloat
         , className =? "XCalc"			--> doCenterFloat
         -- Terminals
         , className =? "xterm"			--> doShift "1:term"
         , className =? "URxvt"			--> doShift "1:term"
         , className =? "Gnome-terminal"	--> doShift "1:term"
         , className =? "lxterminal"		--> doShift "1:term"
         -- Browsers
         , className =? "Iceweasel"		--> doShift "2:web"
         , className =? "Firefox"		--> doShift "2:web"
         , className =? "chromium"		--> doShift "2:web"
         , className =? "Chrome"		--> doShift "2:web"
         , className =? "Midori"		--> doShift "2:web"
         , className =? "Epiphany-browser"	--> doShift "2:web"
         , windowRole ("Epiphany-browser", "epiphany-preferences")
						--> doFloat
         -- Mail
         , className =? "Thunderbird"		--> doShift "3:mail"
         , className =? "Icedove"		--> doShift "3:mail"
         -- Messengers
         , className =? "Skype"			--> doShift "4:im"
         , windowRole ("Skype", "Settings")	--> doFloat
         , className =? "Pidgin"		--> doShift "4:im"
         -- Media
         , className =? "MPlayer"		--> doShift "6:media"
         , className =? "omxplayer"		--> doShift "6:media"
         -- Reading
         , className =? "FBReader"		--> doShift "7:library"
         , className =? "Zathura"		--> doShift "7:library"
         -- Virtual Machines
         , className =? "dosbox"		--> doShift "8:vm"
         , className =? "wine"			--> doShift "8:wm"
         , className =? "VirtualBox"		--> doShift "8:wm"
         , manageDocks
         ]
         where
             -- Detect specified (WM_CLASS_NAME and WM_WINDOW_ROLE) combination
             windowRole :: (String, String) -> Query Bool
             windowRole (c,r) = className =? c <&&> roleName =? r
             -- Detect specified (WM_CLASS_NAME and not WM_WINDOW_ROLE) combination
             classNotRole :: (String, String) -> Query Bool
             classNotRole (c,r) = className =? c <&&> roleName /=? r
             -- Get WM_WINDOW_ROLE
             roleName = stringProperty "WM_WINDOW_ROLE"

-- xmobar
-- Current workspace color
xmobarTitleColor = "green"
xmobarCurrentWorkspaceColor = "yellow"

-- Main function
main = do
    xmproc <- spawnPipe "env xmobar $HOME/.xmobarrc"
    xmonad $ myDefaults {
        logHook = dynamicLogWithPP $ xmobarPP {
	      ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor xmobarTitleColor "" . shorten 75
            -- , ppCurrent = xmobarColor xmobarCurrentWorkspaceColor "" . wrap "[" "]"
            , ppCurrent = xmobarColor xmobarCurrentWorkspaceColor ""
            , ppSep = "   "
            , ppWsSep = " "
            , ppLayout  = (\ x -> case x of
                  "Tall"				-> "[:]"
                  "Mirror Tall"				-> "[M]"
                  "Full"				-> "[F]"
                  _					-> x )
        }
    } 

-- vim:ft=haskell sw=8 sts=4 ts=4 tw=0 et ai nowrap
-- EOF
