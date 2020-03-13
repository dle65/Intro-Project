# frozen_string_literal: true

class AuthorController < ApplicationController
  def index
    @author = Author.all.order('created_at DESC').paginate(page: params[:page], per_page: 5)
  end
end
