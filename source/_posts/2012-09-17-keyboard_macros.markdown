---
layout: post
title: "Keyboard macros"
---

A little late but it's finally up. We're discussing keyboard macros in this episode. 

[Keyboard macros](http://www.gnu.org/software/emacs/manual/html_node/emacs/Keyboard-Macros.html#Keyboard-Macros) are Emacs' way of recording and playing back a series of keys. It's a useful feature that many people don't sufficiently use. The excellent [Emacs Rocks](http://emacsrocks.com/) series of screencasts has [some episodes](http://emacsrocks.com/e02.html) on clever macro usage to reduce the number of keys needed to perform some kind of task. 

<iframe src="http://archive.org/embed/EmacsMovies/10-episode-keyboard_macros.webm" width="640" height="480" frameborder="0"></iframe>

The H.264 version of the video for iOS devices is at <http://archive.org/download/EmacsMovies/10-episode-keyboard_macros.mkv>.

Topics covered
--------------

1. `C-x (` and `C-x )` to start and stop recording macros. With prefix arguments `C-u` and `C-u C-u`, you can append to existing macros. 
1. `C-x e` to replay macros. You can do this a number of times in one shot using prefix arguments. Also, the `apply-macro-to-region-lines` function to apply a macro to all lines in a region.
1. The `C-x` `C-k` `C-i` chord to insert the macro counter while recording a macro. Modifying the macro counter using `C-x` `C-k` `C-a` and `C-x` `C-k` `C-c`. 
1. The `C-x` `q` command to stop while playing back a macro so that you can enter some text or make minor variations. 
1. The `C-x` `C-k` `n` to name the last macro and `C-x` `C-k` `b` to bind the last entered macro to a key. Finally, `insert-kbd-macro` to actually insert a macro as elisp into your current buffer so that you can save it for future use. 

Macros are a little expansive so I took some liberties filtering out some of the features that I thought were not that useful. These are
1. [Editing macros](http://www.gnu.org/software/emacs/manual/html_node/emacs/Edit-Keyboard-Macro.html#Edit-Keyboard-Macro).
1. [Interactively editing macros](http://www.gnu.org/software/emacs/manual/html_node/emacs/Keyboard-Macro-Step_002dEdit.html#Keyboard-Macro-Step_002dEdit)
1. [The macro ring](http://www.gnu.org/software/emacs/manual/html_node/emacs/Keyboard-Macro-Ring.html#Keyboard-Macro-Ring) which contains all the macros created so far. 

I might do another screencast describing these but the manual page is explanatory and the things which I have covered will suffice for day to day usage. 

Futher reading
--------------
1. [The emacs manual page on macros](http://www.gnu.org/software/emacs/manual/html_node/emacs/Keyboard-Macros.html#Keyboard-Macros)
1. [The wiki](http://emacswiki.org) has [a page](http://emacswiki.org/emacs/KeyboardMacros) on macros that contains a lot of useful snippets and other little goodies that can improve your experience. 
1. Xah Lee has a [page on macros](http://xahlee.blogspot.in/2012/07/emacs-key-macro-and-elisp-exercise.html) with some practical examples that he uses.
1. The [Emacs Rocks](http://emacsrocks.com/) series of screencasts has some nice examples of macro magic. 

