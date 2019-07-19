class Author
    attr_accessor :name, :posts
    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title, self)
        @posts << post
    end



    def self.post_count
        post_array = @@all.map do |author|
            author.posts.length
        end
        post_array.sum
    end

    
end