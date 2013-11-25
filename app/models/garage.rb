class Garage < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = 'email'
  end
  attr_accessible :address, :cif, :email, :name, :phone, :avatar, :password, :password_confirmation
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  validates_confirmation_of :password
  
  has_many :owners
end
