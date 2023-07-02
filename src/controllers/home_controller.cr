require "../ai.cr"

class HomeController < ApplicationController
  def index
    user_prompt = user_params.validate!["userPrompt"]?
    ai_response = AI.prompt(user_prompt) if user_prompt
    render("index.slang")
  end

  def user_params
    params.validation do
      optional(:userPrompt)
    end
  end
end
