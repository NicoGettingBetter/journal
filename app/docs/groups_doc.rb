module GroupsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/groups', 'List of Groups'
  end

  def create_doc
    base_doc
    api :POST, '/groups', 'Creates a Group'
    param :id, String, desc: 'ID of group'
    param :number, String, desc: 'Number of group'
    param :faculty, String, desc: 'Faculty of group'
  end

  def update_doc
    base_doc
    api :PATCH, '/groups/:id', 'Updates a Group'
    api :PUT, '/groups/:id', 'Updates a Group'
    param :id, String, desc: 'ID of group'
    param :number, String, desc: 'Number of group'
    param :faculty, String, desc: 'Faculty of group'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/groups/:id', 'Deletes a Group'
    param :id, String, desc: 'ID of group'
  end

  def show_doc
    base_doc
    api :GET, '/groups/:id', 'Shows a Group'
    param :id, String, desc: 'ID of group'
  end
end
