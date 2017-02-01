class PuzzleController < ApplicationController
  def all_guesses
    @check = ""
    # rule = 'No.'
    if params[:first_number].present?  and params[:second_number].present? and params[:third_number].present?
      if params[:second_number].to_f > params[:first_number].to_f and
         params[:third_number].to_f > params[:second_number].to_f
        @check = params[:first_number] + ", " + params[:second_number] + ", " + params[:third_number] + " Yes!"
      else
        @check = params[:first_number] + ", " + params[:second_number] + ", " + params[:third_number] + " No."
      end
    end

    render("all_guesses.html.erb")
  end
  def show_answer
    if params[:rule].present?
      @answer = params[:rule]
    end
    render("show_answer.html.erb")
  end
end
