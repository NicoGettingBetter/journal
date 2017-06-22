module CommentsDoc
  include BaseDoc

  def index_doc
    base_doc
    api :GET, '/comments', 'List of Comments'
    param :comments, Array, desc: 'Array of comments params' do
      param :date, String, desc: 'Date of comment'
      param :attendance, Integer, desc: 'Attendance of comment'
      param :page_id, String, desc: 'Page id of comment'
      param :student_id, String, desc: 'Student id of comment'
    end
  end

  def create_doc
    base_doc
    api :POST, '/comments', 'Creates a Comment'
    param :comments, Array, desc: 'Array of comments params', required: true do
      param :date, String, desc: 'Date of comment', required: true
      param :attendance, Integer, desc: 'Attendance of comment', required: true
      param :student_comment, String, desc: 'Student comment of comment', required: true
      param :page_id, String, desc: 'Page id of comment', required: true
      param :student_id, String, desc: 'Student id of comment', required: true
    end
  end
end
