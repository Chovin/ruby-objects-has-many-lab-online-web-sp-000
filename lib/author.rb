class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_song_by_name(name)
    self.add_song(Song.new name)
  end
  
  def self.song_count
    Song.all.size
  end
end