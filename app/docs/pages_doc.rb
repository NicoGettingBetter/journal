module PagesDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of Pages'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Page'
  end

  def update_doc
    base_doc
    api :PATCH, '/pages/:id', 'Updates a Page'
    api :PUT, '/pages/:id', 'Updates a Page'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Page'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Page'
  end
end
