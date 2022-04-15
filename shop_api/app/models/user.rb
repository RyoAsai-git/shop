# frozen_string_literal: true

class User < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :brand_users
  has_many :brands, through: :brand_users

  has_many :shop_users
  has_many :shops, through: :shop_users

  has_one_attached :icatch

  def icatch_url
    return nil unless icatch.attached?
    url_for(icatch)
  end
end
