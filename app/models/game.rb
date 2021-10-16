class Game < ApplicationRecord

  has_many :players, dependent: :destroy

  accepts_nested_attributes_for :players ,:allow_destroy => true

  before_save :set_winner

  private

  def set_winner
    if players.first.score != players.last.score
      players.first.is_win = true if players.first.score > players.last.score
      players.last.is_win = true if players.last.score > players.first.score
    end
  end
end
