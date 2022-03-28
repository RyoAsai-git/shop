# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :brand_users
  has_many :brands, through: :brand_users

  has_many :shops, through: :shop_users
  # accepts_nested_attributes_for :brand_users
  # accepts_nested_attributes_for :shop_users
end
