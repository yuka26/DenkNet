class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  attachment :profile_image

  has_many :user_categories
  has_many :folklore,  class_name: "Matching", foreign_key: "folklore_id", dependent: :destroy
  has_many :successor, class_name: "Matching", foreign_key: "successor_id", dependent: :destroy
  has_many :folklore_user, through: :successor, source: :folklore
  has_many :successor_user, through: :folklore, source: :successor

  # マッチング申請
  def request(folklore_id, matching)
    successor.create(folklore_id: folklore_id, message: matching["message"])
  end

  # マッチング申請の取り消し
  def cancel(user_id)
    successor.find_by(folklore_id: user_id).destroy
  end

  def requested?(folklore_id, successor_id)
    Matching.find_by(folklore_id: folklore_id, successor_id: successor_id, approve: nil)
  end

  def approve(folklore_id, successor_id)
    matching = folklore.find_by(folklore_id: folklore_id, successor_id: successor_id, approve: nil)
    matching.update(approve: true)
  end

  def reject(folklore_id, successor_id)
    matching = folklore.find_by(folklore_id: folklore_id, successor_id: successor_id, approve: nil)
    matching.update(approve: false)
  end

  def matching?(folklore_id, successor_id)
    matching = Matching.find_by(folklore_id: folklore_id, successor_id: successor_id, approve: true)
    if matching
      return true
    end
  end

  def reject?(folklore_id, successor_id)
    reject = Matching.find_by(folklore_id: folklore_id, successor_id: successor_id, approve: false)
    if reject
      return true
    end
  end
end
