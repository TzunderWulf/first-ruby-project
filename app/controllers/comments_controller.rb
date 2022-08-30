class CommentsController < ApplicationController
    def create
        # Find the article on which the comment should be placed
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        
        redirect_to article_path(@article)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end
