class BooksService
  def get_books
    books_api_connection.get('/books')
  end

  def get_book(id)
    books_api_connection.get("/books/#{id}")
  end

  def get_authors
    books_api_connection.get('/authors')
  end

  def get_author(id)
    books_api_connection.get("/authors/#{id}")
  end

  private

  def books_api_connection
    @books_api_connnection ||= Faraday.new('http://localhost:4000') do |f|
      f.request :json
      f.response :logger, Rails.logger
      f.use :instrumentation
      f.adapter Faraday.default_adapter
    end
  end
end