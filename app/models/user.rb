class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :default_role
  has_and_belongs_to_many :games

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :username, presence:true
  validates :username, uniqueness: true       
  
  enum role:[:admin, :user, :guest]
  
  def to_s
    username
  end

  private
  
  def default_role
  	self.role ||= 1
  end       

end
