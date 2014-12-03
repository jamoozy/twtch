#!/usr/bin/ruby

require 'gtk2'

class GtkTwtch
  def initialize()
    start_button = Gtk::Button.new "Start"
    start_button.signal_connect("clicked") { puts "Starting!" }
    quit_button = Gtk::Button.new "Quit"
    quit_button.signal_connect("clicked") { Gtk.main_quit }

    vbox = Gtk::VBox.new
    vbox.add start_button
    vbox.add quit_button

    window = Gtk::Window.new
    window.set_title("The Way to Carnegie Hall")
    window.signal_connect("destroy") { Gtk.main_quit }
    window.add vbox
  end

  def run()
    Gtk.main
  end
end

if __FILE__ == $0
  twtch = GtkTwtch.new
  twtch.run
end
