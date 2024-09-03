# icub3d

This addon provides various utilities (especially from the command line).

# TODO

## Dragonflight Druid Forms

- Aurostar (world boss)
- Talthonei
- Moragh the Slothful
- Mosa Umbramane
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
1 39 0 0 0 6 0 MultiBarLeft 0.0 4.0 -1 ##$$%/&%'%)$+$,$ 0 1 0 5 5 UIParent -1526.0 34.4 -1 ##$$%/&&'%(&,$ 0 2 0 0 2 MultiBarLeft 4.0 0.0 -1 ##$$%/&%'%(#,$ 0 3 0 6 8 MainMenuBar 4.0 0.0 -1 ##$$%/&%'%(#,$ 0 4 0 5 4 UIParent -2.0 -523.3 -1 ##$$%/&%'%(#,$ 0 5 0 4 4 UIParent 0.0 -556.0 -1 ##$$%)&%'%(#,$ 0 6 1 1 7 MultiBar5 0.0 0.0 -1 ##$$%/&('%(#,$ 0 7 0 3 3 UIParent 2.0 -21.7 -1 #$$$%*&('%(&,$ 0 10 0 4 4 UIParent -300.0 -435.4 -1 ##$$&('% 0 11 0 2 8 MultiBarBottomRight 0.0 -4.0 -1 ##$$&&'%,# 0 12 0 0 6 MultiBarLeft 0.0 -4.0 -1 ##$$&('% 1 -1 0 1 1 UIParent 0.0 -678.0 -1 ##$#%# 2 -1 1 2 2 UIParent 0.0 0.0 -1 ##$#%) 3 0 0 3 3 UIParent 606.0 -60.8 -1 $#3# 3 1 0 5 5 UIParent -606.0 -65.2 -1 %$3# 3 2 0 1 4 UIParent 526.5 12.0 -1 %#&#3# 3 3 0 0 0 UIParent 662.0 -746.4 -1 '$(#)$-k.G/#1#3# 3 4 0 0 0 UIParent 793.2 -724.0 -1 ,#-?.-/#0&1#2( 3 5 0 2 2 UIParent -326.0 -627.6 -1 &$*$3# 3 6 0 2 2 UIParent -451.5 -378.0 -1 -U.9/#4& 3 7 1 4 4 UIParent 0.0 0.0 -1 3# 4 -1 0 4 4 UIParent 0.0 -443.4 -1 # 5 -1 0 1 1 UIParent 0.0 -178.0 -1 # 6 0 0 2 0 MinimapCluster -4.0 0.0 -1 ##$#%#&.(()( 6 1 0 1 1 UIParent 623.6 -178.0 -1 ##$#%#'+(()( 7 -1 0 1 1 UIParent -0.0 -2.0 -1 # 8 -1 0 3 3 UIParent 34.0 -424.5 -1 #($T%%&v 9 -1 0 4 4 UIParent -440.9 -231.6 -1 # 10 -1 0 3 3 UIParent 26.0 395.0 -1 # 11 -1 0 1 1 UIParent 873.0 -878.0 -1 # 12 -1 1 2 2 UIParent -110.0 -275.0 -1 #K$#%# 13 -1 0 3 3 UIParent 1768.7 -571.5 -1 ##$#%)&- 14 -1 0 8 2 MicroMenuContainer 0.0 4.0 -1 ##$#%( 15 0 0 1 1 UIParent -0.0 -2.0 -1 # 15 1 0 0 6 MainStatusTrackingBarContainer 0.0 -4.0 -1 # 16 -1 1 5 5 UIParent 0.0 0.0 -1 #( 17 -1 1 1 1 UIParent 0.0 -100.0 -1 ## 18 -1 1 5 5 UIParent 0.0 0.0 -1 #- 19 -1 1 7 7 UIParent 0.0 0.0 -1 ##
```

# OPie

- F1 - Move - oetohH7 feaZfPZ q4i8nwm ount92T 32q4Y6h witem93 2q4ip41 T32q4is b1T32q4 iaE1T32 30q4Jgy 1y411wf astClic k943wwM ove9134 q4it3w1 8scv94.
- F2 - Quest Items
- F3 - Travel - oetohH7 KbDHvmg 30qq08q 1y4q4bW 5witem9 2T32q4x 8R1T32q 4YCswto y92V32q 4FRi1V3 2q4bVy1 V3211wf astClic k943wwT ravel91 34q4it3 w18scv9 4.
- F4 - Interact - oetohH7 oy2vXMv 30qwr29 1y430qq GYx1y43 0qw2LQ1 y4q4KBE wtoy932 30q4SjW 1y411wf astClic k943qwI nteract 9134q4i t3w18sc v94.
- F5 - Trade Skills

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