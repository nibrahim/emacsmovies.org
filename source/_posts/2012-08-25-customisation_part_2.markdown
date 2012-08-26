---
layout: post
title: "Customisation Part 2"
---

This is the second part of the customisation episode.

This episode covers a little more elisp focusing on common things that people tweak in their init files.

It's a little longer than usual. I was feeling tired so I didn't time myself like I usually do. Also, due to some screw up with my mic jack, there's a crackling sound throughout the recording. It's not *that* bad but it would be nice have gotten it without that. You can also hear me coughing once or twice. My apologies.

<iframe src="http://archive.org/embed/EmacsMovies/08.2-episode-customisation-2.webm" width="640" height="480" frameborder="0"></iframe>

The H.264 version of the video for iOS devices is at <http://archive.org/download/EmacsMovies/08.2-episode-customisation-2.mkv>. This one is rather huge (302 MB or so). If it's prohibitive, you can visit the [archive details page](http://archive.org/details/EmacsMovies) which has links to an mp4 and an ogg version that are much smaller. 

Here's a summary of what is covered along with a few extras.

1. Locations of the init files - `.~/emacs`, `.~/emacs.el`, `.~/emacs.d/init.el`. 
1. `set-foreground-color` and `set-background-color` to change foreground and background.
1. The `visible-bell` variable to control the method in which alarms are displayed. Following are a few extras.    You can get information on these and any other variables using the the `describe-variable` function.

   * `global-auto-revert-mode` which will watch visited files for
   changes and reload if necessary.

   * `require-final-newline` adds a newline to the end of a file
   automatically if it doesn't have one when saving.

   * `debug-on-error` and `debug-on-quit` when the debugger should
   get invoked.  

   * `inhibit-startup-message` will control whether the
   welcome message should be displayed on startup.
   
1. Some functions that are commonly seen in `.emacs` files are `tool-bar-mode`, `blink-cursor-mode` and `show-paren-mode`. 
1. Some functions which are defined in files that are not parts of Emacs need to be `require`d before they can be used. An example is `bar-cursor` which, on Debian, comes in the `emacs-goodies` package. It provides `bar-cursor-mode`. 
1. For files which you've downloaded yourself and not in the default load path, you can use `add-to-list` and add the directory to the `load-path` before requiring. We do this with a `rect-mark` file that we have. 
1. To associate file name patterns with major modes, you can add a tuple to `auto-mode-alist` using `add-to-list`. We do this for `markdown-mode`.
1. We add global keybindings using `global-set-key`. We make bindings for `M-up` and `M-down`. We then create a custom command and bind it to `f7`. 
1. We also add mode specific keybindings using `define-key`. 
1. We add hooks to a major mode to trigger some actions when that mode is activated. We turn on `flyspell-mode` when we enter `markdown-mode` to demonstrate this. 
1. We talk about the customisation system using `M-x customize`. 

One extra thing that I'd like to mention is the `set-face-attribute` function which allows you to modify aspects of a "face". A face is a font along with some other settings like colour, weight, size etc. that you can save and reuse. So, for example, there will be a `comment-face` used to syntax highlight all comments in the buffer. The following command will set the `height` attribute of the default face to `135`. This is a setting that essentially controls text size. 

    (set-face-attribute 'default nil :height 135)
    

That's essentially it. Feedback welcome. 
