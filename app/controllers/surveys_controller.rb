class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
    @survey.num_questions.build
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to edit_survey_path(@survey)
    else
      render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])
    if @survey.update(survey_params)
      redirect_to edit_survey_path(@survey)
    else
      render :edit
    end
  end

private
def survey_params
  params.require(:survey).permit(:title, num_questions_attributes: [:name, :body, :min_value, :max_value, :required])
end

end
