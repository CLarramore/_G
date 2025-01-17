# _G Library

A functional library in Rōblox Lua which populates global variable `_G`.

The codebase was last updated in 2015 and may not work with current versions of Rōblox.

---

It should work either on the server or client peer.

When you're loading the module, it'll take a while to get everything in.  Most of the computation work comes from deriving function names.  For example, in the most intense mode, `_G.SplitString(...)` can also refer to `_G.DelimitString(...)` or to `_G.splitString(...)`.  To reduce loading times, you can modify the values of the `_G Settings` ModuleScript.

Methods can either be called with a dot or a colon.  This module works hard enough to let you do that.
