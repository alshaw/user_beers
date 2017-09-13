class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #associations
  has_many :beers, dependent: :destroy

  validates_presence_of :first_name, :last_name, :age

  #instance method
  def cut_off?
    beers.count > 25 ? true : false
  end

  def full_name
    "#[first_name} #{last_name}"
  end

  #class method

  #callback

end
