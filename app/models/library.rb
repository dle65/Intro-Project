# frozen_string_literal: true

class Library < ApplicationRecord
  # has_many :author
  has_many :comments
  has_many :book
  validate :punisher
  validate :genre

def self.search(search)
    if search
      library = Library.find_by(name: search)
      if library
        self.where(author: library)
      else
        Library.all
      end
    else
      Library.all
    end
end
