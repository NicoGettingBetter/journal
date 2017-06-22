module TeachersDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of teachers'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Teacher'
    param :id, String, desc: 'ID of teacher'
    param :name, String, desc: 'Name of teacher'
    param :department, String, desc: 'Department of teacher'
  end

  def update_doc
    base_doc
    api :PUT, '/pages/:id', 'Updates a Teacher'
    param :id, String, desc: 'ID of teacher'
    param :name, String, desc: 'Name of teacher'
    param :department, String, desc: 'Department of teacher'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Teacher'
    param :id, String, desc: 'ID of teacher'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Teacher'
    param :id, String, desc: 'ID of teacher'
  end
end
