# icub3d

This addon provides various utilities (especially from the command line).

# TODO

## Dragonflight Druid Forms

- Aurostar (world boss)
- Talthonei
- Moragh the Slothful
- Mosa Umbramane
- Ristar the Rabid
- Matriarch Keevah


# Pet Battle

- Aquatic --> Elemental
- Beast --> Critter
- Critter --> Undead
- Dragonkin --> Magic
- Elemental --> Mechanical
- Flying --> Aquatic
- Humanoid --> Dragonkin
- Magic --> Flying
- Mechanical --> Beast
- Undead --> Humanoid

# Console Commands

```
/console cameraDistanceMaxZoomFactor 2.6
/console CameraReduceUnexpectedMovement 1
/console set ResampleAlwaysSharpen 1
```

# UI

```
1 39 0 0 0 6 0 MultiBarLeft 0.0 4.0 -1 ##$$%/&%'%)$+$,$ 0 1 0 1 1 UIParent -173.2 -902.0 -1 ##$$%/&&'%(&,$ 0 2 0 6 8 MultiBarLeft 4.0 0.0 -1 ##$$%/&%'%(#,$ 0 3 0 0 2 MainMenuBar 4.0 0.0 -1 ##$$%/&%'%(#,$ 0 4 0 4 4 UIParent -200.0 -536.8 -1 ##$$%/&%'%(#,$ 0 5 1 1 4 UIParent 0.0 0.0 -1 ##$$%/&('%(#,$ 0 6 1 1 7 MultiBar5 0.0 0.0 -1 ##$$%/&('%(#,$ 0 7 0 3 3 UIParent 2.0 -21.7 -1 #$$$%*&('%(&,$ 0 10 0 4 4 UIParent -300.0 -435.4 -1 ##$$&('% 0 11 0 8 2 MultiBarRight 0.0 4.0 -1 ##$$&&'%,# 0 12 0 6 0 MainMenuBar 0.0 4.0 -1 ##$$&('% 1 -1 0 1 1 UIParent 0.0 -678.0 -1 ##$#%# 2 -1 1 2 2 UIParent 0.0 0.0 -1 ##$#%' 3 0 0 4 4 UIParent -301.0 -60.0 -1 $#3# 3 1 0 8 6 FocusFrame 31.5 -4.0 -1 %$3# 3 2 0 3 3 UIParent 1410.5 -73.7 -1 %#&#3# 3 3 0 0 0 UIParent 662.0 -746.4 -1 '$(#)$-k.G/#1$3# 3 4 0 0 0 UIParent 774.0 -762.0 -1 ,#-?.1/#0&1#2( 3 5 0 2 2 UIParent -26.0 -278.0 -1 &$*$3# 3 6 0 2 2 UIParent -451.5 -378.0 -1 -U.9/#4& 3 7 1 4 4 UIParent 0.0 0.0 -1 3# 4 -1 0 4 4 UIParent 0.0 -320.5 -1 # 5 -1 0 4 4 UIParent 0.0 -400.0 -1 # 6 0 0 2 0 MinimapCluster -4.0 0.0 -1 ##$#%#&.(()( 6 1 0 3 3 UIParent 1526.0 372.2 -1 ##$#%#'+(()( 7 -1 0 1 1 UIParent -0.0 -78.0 -1 # 8 -1 0 3 3 UIParent 34.0 -424.5 -1 #($T%%&z 9 -1 0 4 4 UIParent -440.9 -231.6 -1 # 10 -1 0 3 3 UIParent 68.7 447.0 -1 # 11 -1 0 8 2 BagsBar 0.0 4.0 -1 # 12 -1 1 2 2 UIParent -110.0 -275.0 -1 #K$#%# 13 -1 0 3 3 UIParent 1768.7 -571.5 -1 ##$#%)&- 14 -1 0 8 2 MicroMenuContainer 0.0 4.0 -1 ##$#%( 15 0 0 4 4 UIParent 0.0 -565.9 -1 # 15 1 0 4 4 UIParent 0.0 550.1 -1 # 16 -1 1 5 5 UIParent 0.0 0.0 -1 #( 17 -1 1 1 1 UIParent 0.0 -100.0 -1 ## 18 -1 1 5 5 UIParent 0.0 0.0 -1 #- 19 -1 1 7 7 UIParent 0.0 0.0 -1 ##
```

# OPie

- Primary - `oetohH7 VHtGuRN q4KBEwt oy92T32 30q4SjW 1y411wf astClic k92V4q4 DNx1T32 q4Y6hwi tem932q 4ip4wmo unt92R3 2q4isb1 R32q4ia E1R3230 q4Jgy1y 4111V43 rwPrima ry9134q 4it3w18 scv94.`
- Travel - `oetohH7 ohgYb3r 30qwr29 1y430qq 08q1y4q 4bW5wit em92T32 q4x8R1T 32q4YCs wtoy92V 32q4FRi 1V32q4b Vy1V321 1wfastC lick943 ewTrave l9134q4 it3w18s cv94.`

# Search

# Macros

# Spells

# Developing

## Printing Icons

```
|TInterface\\Icons\\INV_Misc_Coin_01:16|t
```

## Combat Text

0 for off, 1 for on

```
/console floatingCombatTextCombatHealing 0
/console floatingCombatTextCombatDamage 0
```

## Script Errors

It's often helpful to see lua errors. This can be done in the terminal:

```
/console scriptErrors 1
```

To Turn it back off:

```
/console scriptErrors 0
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

# Druid Color Palette


1. Primary Color: #FF7C0A (Vibrant Orange)
2. Complementary Color: #0084F5 (Bright Blue)
3. Accent Color: #FFD700 (Golden Yellow)
4. Neutral Background: #F4F4F4 (Light Gray)
5. Text Color: #333333 (Dark Gray)
6. Secondary Accent: #FFFFFF (White)
7. Secondary Dark Accent: #1A1A1A (Almost Black)