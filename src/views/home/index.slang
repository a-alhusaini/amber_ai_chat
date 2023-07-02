h2 Amber AI Chat
p.lead
  = ai_response
form
  .form-group
    label.form-label for="userPrompt" Prompt the AI
    textarea#userPrompt.form-control name="userPrompt" rows=6
    button.btn.btn-primary type="submit" Prompt!

h3 What is this?
p This is an AI prompt that uses Cohere to generate AI responses to user queries. I made this project to show you what Amber can do.
