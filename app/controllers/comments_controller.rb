class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])

      if @comment.save
        format.html { redirect_to @comment.course, notice: 'Comment was successfully created.' }
        format.json { render json: @comment.course, status: :created, location: @comment }
      else
        format.html { redirect_to @comment.course}
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
  end


  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @comment.course }
      format.json { head :no_content }
    end
  end
end
