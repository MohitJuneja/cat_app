class SubjectsController < ApplicationController
	layout 'admin'
  def index
	  @subjects = Subject.sorted
  end

  def show
	  @subject = Subject.find(params[:id])
  end

  def new
	  @subject = Subject.new
  end

  def create
	  @subject = Subject.new(subject_params)
	  if @subject.save
	  	flash[:notice] = "Subject #{@subject.name} Created Succsfully."
		redirect_to(subjects_path)
	  else
	  	flash[:notice] = "Subject #{@subject.name} CAN NOT be created. Please recheck the values those you entered."
		render('new')
	  end

  end

  def edit
	  @subject = Subject.find(params[:id])
  end

  def update
	  @subject = Subject.find(params[:id])
	  if @subject.update_attributes(subject_params)
		  flash[:notice] = "Subject #{@subject.name} Updated Successfully."
		  redirect_to(subject_path(@subject))
	  else
		  render('new')
	  end
  end

  def delete
	  @subject = Subject.find(params[:id])
  end

  def destroy
  	@subject = Subject.find(params[:id])
	if @subject.destroy
		flash[:notice] = "Subject #{@subject.name} Deleted Successfully."
		redirect_to(subjects_path)
	end

  end

  private 
  
  def subject_params
  	params.require(:subject).permit(:name, :visible, :position)
  end

end
