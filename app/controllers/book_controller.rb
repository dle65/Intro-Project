# frozen_string_literal: true

class BookController < ApplicationController
  def index
    @book = Book.all.order('created_at DESC').paginate(page: params[:page], per_page: 11)
  end
end
