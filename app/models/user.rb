class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :musics
  has_many :tracks
  has_many :favorites
  has_many :comments

  has_many :favorite_musics, through: :favorites, source: :music

  validates :nickname, presence: true, length: { maximum: 6 }
end
