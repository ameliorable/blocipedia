class Wiki < ActiveRecord::Base
  belongs_to :user

  default_scope { order('created_at DESC') }

  scope :visible_to, -> (user) do 
    return all if user.admin? || user.premium?
    where(private: [false, nil])
  end

  validates :title, presence: true
  validates :body, presence: true
end
