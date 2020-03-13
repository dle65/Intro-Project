# frozen_string_literal: true

class Author < ApplicationRecord
  # belongs_to :library
  validate :name
  validate :book
  validate :genre
end
