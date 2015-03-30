class Post < ActiveRecord::Base
  has_many :shares, dependent: :destroy


  def stockscrape
    "#{symbol} #{price}"
  end


  def cleardatabase
    Post.destroy_all
  end

end
#<%= f.select(:symbol, options_from_collection_for_select(Post.all, :id, :stockscrape), :include_blank => true)%>
