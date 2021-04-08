class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @answer = params[:question]
        @coach_answer = question(@answer)
    end

    def question(answer)
        if @answer.downcase == "i am going to work right now!"
            return "You had better!"
        elsif @answer.include? "?"
            return "Silly question, get dressed and go to work!"
         else
            return "I don't care, get dressed and go to work!"
         end
    end
end
