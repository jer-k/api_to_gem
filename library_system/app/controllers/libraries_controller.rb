class LibrariesController < ApplicationController
  def books
    @library = Library.find(params[:id])
  end
end