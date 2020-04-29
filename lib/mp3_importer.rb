require 'pry'
class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end

  def self.find_or_create_by_name(title)
    song = self.find_by_name(title)
    if song == nil
      self.create(title)
    else
      song
    end
  end
  
  def import
    @files = files
    files.each{ |filename|
      Song.new_by_filename(filename) }
  end

end