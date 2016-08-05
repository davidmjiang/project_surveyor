class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    fail
    if @survey.save
      redirect_to @survey
    else
      render :new
    end
  end

private
def survey_params
  params.require(:survey).permit(:title, questions_attributes: [:name, :body, :min_value, :max_value, :required])
end

end
