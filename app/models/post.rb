class Post < ActiveRecord::Base

  def stockscrape
    "#{symbol} #{price}"
  end


  def cleardatabase
    Post.destroy_all
  end

end
#<%= f.select(:stockscrape, options_from_collection_for_select(Post.all, :id, :stockscrape), :include_blank => true)%>
