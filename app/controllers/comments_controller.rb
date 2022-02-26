class CommentsController < ApplicationController

    before_action :post_id

    def create
        @comment = @post.comments.build(comments_params)
        if @comment.save
            redirect_to root_path, notice: "UUUUUUUUUUUUUUUUUUHHHHHH!!!!"
        else
            format.turbo_stream { render turbo_stream: turbo_stream.replace(@comment, partial: "comments/form", locals: { comment: @comment }) }
            render 'posts/post'
        end
    end


    private
        def post_id
            @post = Post.where(id: params[:post_id]).first
        end

        def comments_params
            params.require(:comment).permit(:body)
        end
end
