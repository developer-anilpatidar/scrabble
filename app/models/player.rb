class Player < ApplicationRecord
  belongs_to :user
  belongs_to :game

  scope :wins, -> { where(is_win: true) }
  scope :losses, -> { where(is_win: false) }
end
