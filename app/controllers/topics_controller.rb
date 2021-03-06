class TopicsController < ApplicationController
  def index
    @topics = Topic.includes(:favorite_users, :comments, :comment_users)
    @comment = Comment.new
  end
 
  def new
    @topic = Topic.new
  end

  def created
    @topic = current_user.topics.new(topic_params)
    # 省略せずに書く
    # @topic=Topic.new(topic_params)
    # @topic.user_id=current_user.id

    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  private
  def topic_params
    params.require(:topic).permit(:image, :description)
  end
end

