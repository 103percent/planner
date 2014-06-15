class Chapter < ActiveRecord::Base
  validates :name, uniqueness: true

  has_many :workshops, class_name: Sessions
  has_many :groups

  scope :students, -> { joins(:group).where(group: { name: 'Students' }) }
  scope :coaches, -> { joins(:group).where(group: { name: 'Coaches' }) }
end
