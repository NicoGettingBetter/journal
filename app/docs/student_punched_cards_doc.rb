module StudentPunchedCardsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of student punched cards'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Student punched card'
    param :id, String, desc: 'ID of student punched card'
    param :punched_card_id, String, desc: 'Punched card ID of student punched card'
    param :student_id, String, desc: 'Student ID of student punched card'
    param :date, String, desc: 'Date of student punched card'
    param :mark, Integer, desc: 'Mark of student punched card'
  end

  def update_doc
    base_doc
    api :PUT, '/pages/:id', 'Updates a Student punched card'
    param :id, String, desc: 'ID of student punched card'
    param :punched_card_id, String, desc: 'Punched card ID of student punched card'
    param :student_id, String, desc: 'Student ID of student punched card'
    param :date, String, desc: 'Date of student punched card'
    param :mark, Integer, desc: 'Mark of student punched card'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Student punched card'
    param :id, String, desc: 'ID of student punched card'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Student punched card'
    param :id, String, desc: 'ID of student punched card'
  end
end
