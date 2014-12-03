#!/usr/bin/ruby

# Builds images for you to display on a gnomecanvas object.
class ImageBuilder
  attr_reader :piano  # Next generated piano image (of next measure)
  attr_reader :score  # Next generated score image (of next measure)

  #    file:   Name of the ABC file (does it need an abc extension?)
  #    width:  Width of the piano (for drawing the right size). If
  #            this is not included or it is 0, then the piano image
  #            will not be created.
  #    height: Height of the score.  If this is not included or is
  #            0, the score image will not be generated.
  def initialize(file, width=0, height=0)
    @file = file
    @width = width
    @height = height
    @piano = None
    @score = None
  end

  # Determines if calls to iterator will update the piano image.
  def makesPiano?
    width > 0
  end

  # Determines if calls to iterator will update the score image.
  def makesScore?
    height > 0
  end

  # Checks the next measure of the Song object and creates the
  # images for the piano view and the score view of playing.
  # These created images can be accessed via the piano and score
  # variable accessors.
  def iterate!
  end
end

