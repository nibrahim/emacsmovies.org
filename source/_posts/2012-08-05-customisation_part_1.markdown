---
layout: post
title: "Customisation Part 1"
---

This is the first of a two part episode that discusses how to do basic customisation of Emacs.

This episode covers some basic [elisp](https://en.wikipedia.org/wiki/Emacs_Lisp) which is the language that you can extend and modify Emacs with.

I do have an entire section dedicated to teaching Emacs lisp. This is a quick intro solely for the purpose of doing basic customisations.

<iframe src="https://archive.org/embed/EmacsMovies/08.1-episode-customisation-1.webm" width="640" height="480" frameborder="0"></iframe>

The H.264 version of the video for iOS devices is at <https://archive.org/download/EmacsMovies/08.1-episode-customisation-1.mkv>.

The main things which are covered are

1. A super fast overview of elisp - [sexp](https://en.wikipedia.org/wiki/S-expression)s and prefix notation.
1. `C-x C-e` and `C-j` to evaluate sexps.
1. Simple expressions like `(+ 2 2 )`
1. The `'` operator.
1. Assigning values to symbols using `set` and `setq`.
1. Executing simple functions like `set-background-color`.
1. Changing the value of variables like `line-spacing`.
1. Writing simple functions.
1. Using `C-h f` and `C-h v` to get documentation on functions and variables.

Further reading
---------------

* Steve Yegges [Emergency Elisp](http://steve-yegge.blogspot.in/2008/01/emergency-elisp.html) is a quick primer for those who want to learn useful basics. 
* Xah Lee's [Emacs lisp tutorial](http://ergoemacs.org/emacs/elisp.html) is another more detailed tutorial for the language. 
* The official Gnu [An Introduction to Programming in Emacs Lisp](http://www.gnu.org/software/emacs/emacs-lisp-intro/html_node/index.html) is an elisp tutorial for non programmers.
* The official [Emacs lisp reference](http://www.gnu.org/software/emacs/manual/html_node/elisp/index.html) is more thorough guide which is not very useful as a tutorial but handy to have around when you're actually coding in elisp.









