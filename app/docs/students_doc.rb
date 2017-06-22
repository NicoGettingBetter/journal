module StudentsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of students'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Student'
    param :id, String, desc: 'ID of student'
    param :name, String, desc: 'Name of student'
    param :record_book_number, String, desc: 'Record book number of student'
    param :group_id, String, desc: 'Group ID for student'
    param :year, String, desc: 'Year of student group'
  end

  def update_doc
    base_doc
    api :PUT, '/pages/:id', 'Updates a Student'
    param :id, String, desc: 'ID of student'
    param :name, String, desc: 'Name of student'
    param :record_book_number, String, desc: 'Record book number of student'
    param :group_id, String, desc: 'Group ID for student'
    param :year, String, desc: 'Year of student group'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Student'
    param :id, String, desc: 'ID of student'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Student'
    param :id, String, desc: 'ID of student'
  end
end
