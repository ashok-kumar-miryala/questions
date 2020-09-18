class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def create
  end

  def new
  @question = Question.new
  4.times { @question.answers.build }
  end

  def edit
  end
end
