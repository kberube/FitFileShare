class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :fits
  validates_uniqueness_of :username
  validates_format_of :username, :with => /^[A-Za-z\d_]+$/, :multiline => true, message: "can't have spaces or symbols."
end
