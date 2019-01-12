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
  
  def add_song_by_title(title)
    self.add_song(Post.new title)
  end
  
  def self.post_count
    Post.all.size
  end
end