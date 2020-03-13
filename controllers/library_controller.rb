# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @library = Library.search(params[:search])
    @library = Library.all.order('created_at DESC').paginate(page: params[:page], per_page: 11)
  end

  def search
    @library = Library.where('name LIKE ?', '%' + params[:q] + '%')
  end

  def show
    @library = Library.all
  end

  private

  def library_params
    params.require(:library).permit(:name, :author, :genre, :search)
  end
end
