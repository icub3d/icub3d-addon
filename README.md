# Developing

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
