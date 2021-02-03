class SearchMusicsService
  def self.search(search)
    if search != ''
      Music.where('title LIKE(?) OR artist_name LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Music.all
    end
  end
end
