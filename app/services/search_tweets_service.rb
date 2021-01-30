class SearchTweetsService
  def self.search(search)
    if search != ''
      Tweet.where('title || artist_name LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
