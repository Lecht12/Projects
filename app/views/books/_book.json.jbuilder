json.extract! book, :id, :name, :category, :price, :writer, :created_at, :updated_at
json.url book_url(book, format: :json)
