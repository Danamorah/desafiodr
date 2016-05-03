class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :name, :lastname, :username, presence:true
  validates :username, uniqueness: true       
  
  enum role:[:admin, :user, :guest]
  
  private
  
  def default_role
  	self.role ||= 1
  end       

end
