class TaskMailer < ApplicationMailer
  default from: 'taskleaf@example.com'
  
  def creation_email(task)
    @task = task
    mail(
      subject: 'タスク作成完了メール',
      to: 'ywsep20@gmail.com',
      from: 'ywsep20@yahoo.co.jp'
      )
  end
end
