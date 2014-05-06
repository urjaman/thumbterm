# fingerterm

fingerterm is a terminal emulator designed for touch-based interaction,
specifically for (but not limited to) use on the Nokia N9 and Jolla's
Jolla device.

#UI tweaks for fingerterm

fingerterm is the Terminal application that ships with Sailfish OS on the [Jolla smartphone](http://jolla.com). This fork contains a few UI tweaks to make fingerterm prettier and easier to use. 

###Usability improvements
- Removed the spacing betweens keys on the virtual keyboard to maximize key sizes. 
- Reduced the opacity of the keyboard when inactive to make it easier to read text obscured by the inactive keyboard.
- Pressing an arrow key or the Page Up / Page Down key now doesn't activate the keyboard anymore (but the key press is otherwise processed normally). This makes it easier to navigate long documents in vim for example. You can now scroll throuh a long document using the arrow keys or the Page Up / Page Down key without causing the keyboard to activate and cover most of the screen.
- Unset the POSIXLY_CORRECT environment variable on startup as [having it set causes bash to start in POSIX mode](http://www.delorie.com/gnu/docs/bash/bashref_62.html#IDX214) which causes it to [not read the .bashrc on startup](http://lists.gnu.org/archive/html/bug-bash/2001-10/msg00117.html)

###Cosmetic changes
- Changed default font color to bright green.
- Made the window background translucent.
- Added a cover (full credit to [Thomas Perl](https://github.com/tph) for this code)

##Known issues
Several of these changes required the use of Sailfish OS-specific components. This fork will therefore only run on Sailfish OS (i.e. on the Jolla). 
