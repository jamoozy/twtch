#!/usr/bin/ruby

class Song
  attr_reader :title
  attr_reader :composer
  attr_reader :meter
  attr_reader :tempo
  attr_reader :key
  attr_reader :voices

  # each song has a bunch of voices
  def readFile(abcFile)
    header = true
    open(abcFile).each_line do |line|
      case line
      when /^%/ #comment
      when /^X:/ #new song
      when /^T:/ #title
      when /^C:/ #composer
      when /^M:/ #meter
      when /^Q:/ #tempo
      when /^L:/ #default note length
      when /^K:/ #key
      when /^V:/ #voice
      when /^.:/
      else
      end
    end
  end
end

class Voice
  attr_reader :name
  attr_reader :clef
  def iterateChords
  end
end

class Chord
  attr_reader :connects_to_next
end

class Note
end
