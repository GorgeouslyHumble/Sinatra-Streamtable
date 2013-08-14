APPLICATION_PATH = File.expand_path(File.join(File.dirname(__FILE__), "."));

require 'rubygems'
require "#{APPLICATION_PATH}/streamtable.rb"

run StreamTable.new
