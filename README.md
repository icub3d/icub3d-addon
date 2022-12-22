# icub3d

This addon provides various utilities (especially from the command line).

# UI

```
0 30 0 0 0 5 5 UIParent -1068.7 -476.7 -1 ##$$%/&('%)$+$ 0 1 1 6 0 MainMenuBar 0.0 5.0 -1 ##$$%/&('%(#,$ 0 2 0 1 1 UIParent 283.0 -1102.0 -1 ##$$%/&('%(#,$ 0 3 0 3 3 UIParent 1068.7 -476.2 -1 ##$$%/&('%(#,$ 0 4 0 1 1 UIParent -283.0 -1102.0 -1 ##$$%/&('%(#,$ 0 5 1 1 4 UIParent 0.0 0.0 -1 ##$$%/&('%(#,$ 0 6 1 1 7 MultiBar5 0.0 0.0 -1 ##$$%/&('%(#,$ 0 7 1 1 7 MultiBar6 0.0 0.0 -1 ##$$%/&('%(#,$ 0 10 0 5 5 UIParent -1268.7 -429.2 -1 ##$$&('% 0 11 0 7 1 MultiBarRight 120.3 4.0 -1 ##$$&('%,# 0 12 0 4 4 UIParent 0.0 -254.2 -1 ##$$&('% 1 -1 0 4 4 UIParent 0.0 -208.3 -1 ##$# 2 -1 1 2 2 UIParent 0.0 0.0 -1 ##$# 3 0 0 1 1 UIParent -302.0 -786.0 -1 $#3# 3 1 0 1 1 UIParent 298.0 -784.0 -1 %#3# 3 2 1 3 5 TargetFrame -10.0 0.0 -1 %#&#3# 3 3 1 0 2 CompactRaidFrameManager 0.0 -7.0 -1 '#(#)#-#.#/#1$3# 3 4 1 0 2 CompactRaidFrameManager 0.0 -5.0 -1 ,#-#.#/#0#1#2( 3 5 1 5 5 UIParent 0.0 0.0 -1 &$*$3- 3 6 1 5 5 UIParent 0.0 0.0 -1 3- 4 -1 0 4 4 UIParent 0.0 -426.7 -1 # 5 -1 0 4 4 UIParent 0.0 -340.0 -1 # 6 0 1 2 0 MinimapCluster -10.0 -10.0 -1 ##$#%#&.(()(*# 6 1 1 2 8 BuffFrame -13.0 -15.0 -1 ##$#%#'+(()(*# 7 -1 0 4 4 UIParent 0.0 505.0 -1 # 8 -1 0 3 3 UIParent 34.0 -394.5 -1 #'$B%&&R 9 -1 0 7 1 MainMenuBar -262.0 4.0 -1 # 10 -1 1 0 0 UIParent 16.0 -116.0 -1 # 11 -1 1 8 8 UIParent -9.0 85.0 -1 # 12 -1 1 2 2 UIParent -110.0 -275.0 -1 #K
```

# Search

# Macros

# Spells

# Developing

## Printing Icons

```
|TInterface\\Icons\\INV_Misc_Coin_01:16|t
```

## Script Errors

It's often helpful to see lua errors. This can be done in the terminal:

```
/console scriptErrors 1
```

To Turn it back off:

```
/console scriptErrors 1
```

## Frame Names

If you are having trouble figuring out the name of a frame in the UI,
you can use the frame stack command to show the stack where you mouse
is:

```
/fstack
```

# Notes

These are some snippets that might be useful.

```lua
-- Hide micro menu items
RegisterStateDriver(CharacterMicroButton, "visibility", "hide");
RegisterStateDriver(SpellbookMicroButton, "visibility", "hide");
RegisterStateDriver(TalentMicroButton, "visibility", "hide");
RegisterStateDriver(AchievementMicroButton, "visibility", "hide");
RegisterStateDriver(QuestLogMicroButton, "visibility", "hide");
RegisterStateDriver(GuildMicroButton, "visibility", "hide");
RegisterStateDriver(LFDMicroButton, "visibility", "hide");
RegisterStateDriver(StoreMicroButton, "visibility", "hide");
RegisterStateDriver(CollectionsMicroButton, "visibility", "hide");
RegisterStateDriver(EJMicroButton, "visibility", "hide");
RegisterStateDriver(StoreMicroButton, "visibility", "hide");
RegisterStateDriver(MainMenuMicroButton, "visibility", "hide");
```
