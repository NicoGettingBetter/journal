module PagesDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/pages', 'List of Pages'
  end

  def create_doc
    base_doc
    api :POST, '/pages', 'Creates a Page'
    param :pages, Array, desc: 'List of pages' do
      param :id, String, desc: 'ID of page'
      param :kind_of_lesson, String, desc: 'Kinf of lesson of page'
      param :comment, String, desc: 'Comment of page'
      param :user_id, String, desc: 'User ID of page'
      param :subject_id, String, desc: 'Subject ID of page'
    end
  end

  def update_doc
    base_doc
    api :PATCH, '/pages/:id', 'Updates a Page'
    api :PUT, '/pages/:id', 'Updates a Page'
    param :id, String, desc: 'ID of page'
    param :page, Array, desc: 'List of pages' do
      param :id, String, desc: 'ID of page'
      param :kind_of_lesson, String, desc: 'Kinf of lesson of page'
      param :comment, String, desc: 'Comment of page'
      param :user_id, String, desc: 'User ID of page'
      param :subject_id, String, desc: 'Subject ID of page'
    end
  end

  def destroy_doc
    base_doc
    api :DELETE, '/pages/:id', 'Deletes a Page'
    param :id, String, desc: 'ID of page'
  end

  def show_doc
    base_doc
    api :GET, '/pages/:id', 'Shows a Page'
    param :id, String, desc: 'ID of page'
  end
end
