class Wiki < ActiveRecord::Base
  belongs_to :user

  has_many :collaborators, dependent: :destroy
  has_many :users, through: :collaborators, source: :user

  validates :user, presence: true

  # default_scope { order('created_at DESC') }
  #
  # scope :visible_to, -> (user) do
  #   return all if user.admin? || user.premium?
  #   where(private: [false, nil])
  # end
  #
  # validates :title, presence: true
  # validates :body, presence: true
end
