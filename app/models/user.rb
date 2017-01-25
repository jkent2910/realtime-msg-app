class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages

  has_attached_file :profile_picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "missing.jpg"
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\z/


  validates_presence_of :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}".strip
  end

end
