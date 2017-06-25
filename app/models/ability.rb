class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, %i(Comment
                      Group
                      Page
                      PunchedCard
                      StudentPunchedCard
                      Student
                      SubjectGroup
                      Subject
                      Teacher
                      TeacherUser)
    elsif user.teacher?
      can :manage, %i(Page
                      Comment
                      TeacherUser
                      StudentPunchedCard)
      can :read, %i(Group
                    PunchedCard
                    Student
                    SubjectGroup
                    Teacher
                    Subject)
    end      
  end
end
