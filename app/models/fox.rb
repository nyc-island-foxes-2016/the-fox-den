class Fox < ActiveRecord::Base
  include BCrypt

  belongs_to :den

  validate :start_with_fox
  
  validates :name, length: {maximum: 50}, presence: true, uniqueness: true
  validates :color, length: {maximum: 20}


  def password
    @password ||= Password.new(password_hash) # reading encrypted password and turning it into BCrypt Password object
  end

  def password=(new_password) # plain text password incoming here
    @password = Password.create(new_password) # plain text password encrypted here
    self.password_hash = @password # password_hash column/attribute set to encrypted password here
  end

  private

  def start_with_fox
    unless self.name.starts_with?('fox')
      errors.add(:name, "HEY, Your name should start with fox")
    end
  end
end
