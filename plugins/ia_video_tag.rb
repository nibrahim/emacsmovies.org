# Title: Simple Video tag to link videos off the Internet Archive in the EmacsMovies collection.
# Author: Noufal Ibrahim http://nibrahim.net.in
# Description: Embed videos from the EmacsMovies collection on the Internet Archive 
#              http://www.archive.org/details/EmacsMovies/ 
#
# Syntax {% avid video_file.webm %}
#
# Example:
# {% avid upload-webm.webm %}
#
# Output:
# <iframe src="http://www.archive.org/embed/EmacsMovies/upload-webm.webm" width="640" height="480" frameborder="0"></iframe>
#

module Jekyll

  class ArchiveVideoTag < Liquid::Tag
    @video = nil

    def initialize(tag_name, markup, tokens)
      if markup =~ /(.*\.webm)/i
        @video  = $1
      end
      super
    end

    def render(context)
      output = super
      if @video
        video = "<iframe src='http://www.archive.org/embed/EmacsMovies/#{@video}' width='640' height='480' frameborder='0'></iframe>"
        video += "<br/><a href='http://www.archive.org/download/EmacsMovies/#{@video}'>Direct download link</a>"
      end
    end
  end
end

Liquid::Template.register_tag('avid', Jekyll::ArchiveVideoTag)

