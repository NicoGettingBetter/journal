module GroupsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/groups', 'List of Groups'
  end

  def create_doc
    base_doc
    api :POST, '/groups', 'Creates a Group'
  end

  def update_doc
    base_doc
    api :PATCH, '/groups/:id', 'Updates a Group'
    api :PUT, '/groups/:id', 'Updates a Group'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/groups/:id', 'Deletes a Group'
  end

  def show_doc
    base_doc
    api :GET, '/groups/:id', 'Shows a Group'
  end
end
