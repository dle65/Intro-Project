# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :library
  validate :title
  validate :author
  validate :punisher
end
