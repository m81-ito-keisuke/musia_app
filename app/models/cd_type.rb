class CdType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Single' },
    { id: 3, name: 'Album' },
    { id: 4, name: 'Mini Album' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end
