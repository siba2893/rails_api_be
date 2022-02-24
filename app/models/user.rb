# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  extend Devise::Models #added this line to extend devise model

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable

  include DeviseTokenAuth::Concerns::User

  ATTRIBUTES = [
    :id,
    :first_name,
    :last_name,
    :email,
    :company_id
  ].freeze

  RESPONSE = {
    only: ATTRIBUTES,
    include: [],
  }.freeze

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
