module SubjectsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of subjects'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Subject'
    param :id, String, desc: 'ID of subject'
    param :name, String, desc: 'Name of subject'
  end

  def update_doc
    base_doc
    api :PUT, '/pages/:id', 'Updates a Subject'
    param :id, String, desc: 'ID of subject'
    param :name, String, desc: 'Name of subject'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Subject'
    param :id, String, desc: 'ID of subject'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Subject'
    param :id, String, desc: 'ID of subject'
  end
end
