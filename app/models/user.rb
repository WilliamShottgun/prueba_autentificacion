class User < ApplicationRecord
	has_many :playlists, dependent: :destroy
	has_many :songs, through: :playlists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:trainer, :admin]
  before_create :set_role


  private
  
  def set_role
  	self.role = 'trainer' if self.role.nil?
  end
end
