module AcceptsComments
  def comments
    if @comments
      @comments
    else
      @comments = []
    end
  end 
  
  def add_comment(comment)
    comments << comment # don't need to use self.comments as not using assignment operator
  end
end

class Clip
  def play
    puts "Playing #{object_id}..."
  end
end

class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments
  def show
    puts "Displaying #{object_id}..."
  end
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat.")
photo = Photo.new
photo.add_comment("Beautiful comments")

p video.comments, song.comments

video.play
song.play
photo.show

p photo.comments