class CommentNotifier
  attr_reader :notifier
  def initialize(comment)
    @notifier = Notification.new
  end

  def notify
    notifier.deliver
  end
end

class Notification
  def deliver
    "delivered emails"
  end
end

class Comment
  attr_reader :title, :description, :body, :published_date

  def initialize(title, description, body, published_date)
    @title          = title
    @description    = description
    @body           = body
    @published_date = published_date
  end
end
