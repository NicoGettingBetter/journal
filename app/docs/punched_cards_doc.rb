module PunchedCardsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of Punched cards'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Punched card'
    param :id, String, desc: 'ID of punched card'
    param :type_of_controll, String, desc: 'Type of controll of punched card'
    param :deadline, String, desc: 'Deadline of punched card'
    param :max_mark, String, desc: 'Max mark of punched card'
    param :subject_group_id, String, desc: 'Subject group of punched card'
  end

  def update_doc
    base_doc
    api :PUT, '/pages/:id', 'Updates a Punched card'
    param :id, String, desc: 'ID of punched card'
    param :type_of_controll, String, desc: 'Type of controll of punched card'
    param :deadline, String, desc: 'Deadline of punched card'
    param :max_mark, String, desc: 'Max mark of punched card'
    param :subject_group_id, String, desc: 'Subject group of punched card'
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Punched card'
    param :id, String, desc: 'ID of punched card'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Punched card'
    param :id, String, desc: 'ID of punched card'
  end
end
