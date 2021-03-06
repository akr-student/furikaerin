class Board < ApplicationRecord
  include KeyColumnGeneratable

  has_many :cards, dependent: :delete_all
  has_many :categories, dependent: :delete_all

  def markdown
    ApplicationController.render('boards/show.md.erb', assigns: { board: self })
  end
end
