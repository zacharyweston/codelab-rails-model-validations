json.extract! book, :id, :title, :page_count, :on_shelf, :created_at, :updated_at
json.url book_url(book, format: :json)