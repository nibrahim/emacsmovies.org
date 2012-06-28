---
layout: post
title: "Welcome to emacsmovies.org"
---

Welcome to Emacs Movies. 

This is a blog where I plan to post screencasts to teach people how to use the programmers editor [Gnu Emacs](http://www.gnu.org/software/emacs/). 

## Production workflow

The videos are recorded by me and then encoded and uploaded. I'm not doing any editing and so small mistakes will be left in there. I do plan to make a script and do a trial run before recording the final version so there's some "pre editing". 

I use this makefile to automate the entire process

<script src="https://gist.github.com/2466292.js?file=gistfile1.mak"></script>

I use something like `make number=01 name=introduction` to create `01-episode-introduction.mkv` and `01-episode-introduction.webm`. The former is for ios devices and the latter for streaming. Make is surprisingly efficient for this since it can resume if things are interrupted and can automatically do things in parallel if a `-j` is passed. For example, it will transcode the `webm` and `mkv` files as two processes if I ask it to. Once that's done and I'm happy, I do a `make number=01 name=introduction upload` and the generated files are uploaded to the archives web servers using its implementation of the Amazon S3 API. This allows the whole flow to be non-interactive and smooth. I'm not much of a GUI man and prefer to have things run in a console.

These files are uploaded to the internet archive in the [EmacsMovies collection](http://www.archive.org/details/EmacsMovies). I prefer using the archive to other video hosting websites because they allow you to download the original files directly. Also, their mission to preserve data for ever rather than to make money off user generated content appeals to me. 

## Software used

I've already mentioned [ffmpeg](http://ffmpeg.org) in the workflow.
	
During the recording, I use my [showkeys](https://github.com/nibrahim/showkeys) application to display keystrokes on the side. I didn't use this instead of more mature programs like [key-mon](http://code.google.com/p/key-mon/) for a [number of reasons](http://nibrahim.net.in/2011/11/30/showkeys.html).

The blog is generated using [Octopress](http://octopress.org/) which is a set of plugins and spiffy templates for the [jekyll](http://jekyllrb.com/) static blog generator. I use my own emacs mode [hyde.el](https://github.com/nibrahim/Hyde) to maintain the blog. It is maintained on github at <https://github.com/nibrahim/emacsmovies.org>. The emacsmovies.org website is hosted currently on [the Internet hosting cooperative](http://hcoop.net/). 

I'm mentioning all this so that people can offer suggestions on how to improve the workflow. 

On a side note, I'm a Python developer in my day job and I wanted to do this entire project without using Python at all and I was able to. 

## Long term plans

<blockquote>
<p>Emacs is like a brain, at maximum you can only utilize about 10% of its real power :)</p>
<footer>delYsid on #emacs</footer>
</blockquote>

It is definitely not possible to cover *all* of Emacs. My plan as of now is to start off with a few screencasts on basic editing and navigation. After this, a few on basic customisation. Then I plan to do emacs "applications" (e.g. dired, Gnus, org-mode) etc. I'll probably loosely structure it around the [emacs manual](http://www.gnu.org/software/emacs/manual/html_node/emacs/index.html). 

I had a conversation with Zed Shaw about his [learn code the hard way](http://learncodethehardway.org/) series of books and video tutorials. He suggested that I supplement the screencasts with a book and I've started work on that too. Right now, my feeling is that each screencast will be the contents of one chapter condensed. I hope to keep all the screencasts under 15 minutes long each.

I hope to do at least one a month. If you have any comments or suggestions, please email me - `noufal at emacsmovies.org`.


## Support and feedback

For any fixes in the software mentioned above or corrections on the website, please use the [github issue tracker](https://github.com/nibrahim/emacsmovies.org/issues). If you're interested in doing a screencast for the website, please email me at `noufal at emacsmovies.org` and we can work something out. 

## Licensing

All the software which I've written to make this possible are released under the GNU GPL version 3. 

The actual videos are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.

I will occasionally link to videos created by other people. These are owned by the people who made them and are might have different licensing terms.

## Following emacsmovies.org

I have a twitter account setup for this website. You can follow <a href="https://twitter.com/intent/follow?original_referer=http%3A%2F%2Flocalhost%3A4000%2F&region=follow_link&screen_name=emacsmovies&source=followbutton&variant=2.0">@emacsmovies</a> on twitter to stay up to date or subscribe to the <a href="/atom.xml">atom feed</a>. 



