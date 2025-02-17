class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many  :photos, :dependent => :destroy
  has_many  :comments, :dependent => :destroy
  has_many  :likes, :dependent => :destroy
  has_many  :liked_photos, :through => :likes, :source => :photo, :dependent => :destroy

  validates :username, :presence => true, :uniqueness => true

end
