Version 1.1
Notice: This modpack is ollllld.

HOW TO INSTALL
Copy the "lua" and "sprites" folder to your own levelpack. That's all there is to it!

ADDITIONS
- BOUNCE causes objects to turn around if their movement fails
- SPLAT causes objects to die if their movement fails
- CRUMBLE causes objects to die if they are not lonely
- NOPE will delete the entire level if it is used in a rule
- WASD causes an object to "follow" your inputs
- SOLID is a prefix that activates if an object blocks movement into its tile
- DELICATE is a prefix that activates if an object can kamikaze
- POWERS is Power in verb form, a la Pata's mods, works with suffixes
- MLELT, the property that works like Melt but with different parsing order (and a particle)
- KATA is a fifth direction block
- A few new colors
- A few new effects

KNOWN BUGS
- KATA doesn't work with FACING
- There are no sprites for KATA-facing objects
- SPLAT and PUSH combined cause some funny interactions

IT'S NOT A BUG IT'S A FEATURE
- WASD doesn't work with DEFEAT or WIN
- There is no sound for BOUNCE, but it still shakes the screen
- CRUMBLE makes the HOT sound
- Everything about KATA
- WASD also activates with YOU2 movement
- FACING KATA parses despite doing nothing
- KATA does nothing with TURN
- BOUNCE is weird with MOVE
- MLELT parses at a different time from MELT

POSSIBLE PLANS?
- YOUR (Prefix, activates for all controllable objects)
- P1 (Property, opposite of WASD)

CHANGELOG 1.0
- Attempted to add a unique "direction bank" for objects facing KATA, doesn't seem to work :(
- Various visual things from Particlels
- Fixed conditions
- Add POWERS
