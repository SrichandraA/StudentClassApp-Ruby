class PostsController < ApplicationController
  def index
      
  end

  def new
      @post=Post.new
      @category=Category.all
  end

  def show
      @post=Post.find(params[:id])
  end
    
    def create
        
        @post=Post.new(params[:post])
        if @post.save
            redirect_to 'http://localhost:3000/categories/'+@post.category_id.to_s, :notice => "Student saved"
        else
            render "new"
        end
        
    end
    

  def edit
      @post=Post.find(params[:id])
         @category=Category.all
            respond_to do |format|
    format.html
    format.js
  end
  end
    
  def update
  
   @post=Post.find(params[:id])
       if @post.update_attributes(params[:post])
            redirect_to 'http://localhost:3000/categories/'+@post.category_id.to_s, :notice => "Student Updated"
        else
            render "edit"
        end
  
  end
    def destroy
        @post=Post.find(params[:id])
        @post.destroy
        redirect_to 'http://localhost:3000/categories/'+@post.category_id.to_s, :notice => "Student Deleted"
    end
    
end
