module AI
  def self.prompt(prompt) : String
    if prompt.nil? || prompt.strip.empty?
      return "your prompt is empty"
    else
      response = HTTP::Client.post(
        "https://api.cohere.ai/v1/generate",
        headers: HTTP::Headers{
          "Content-Type"  => "application/json",
          "Authorization" => "Bearer #{Amber.settings.secrets["cohere_api_key"]}",
        },
        body: {"max_tokens" => 250, "return_likelihoods" => "NONE", "prompt" => prompt}.to_json)

      body = JSON.parse(response.body)
      begin
        return body["generations"][0]["text"].as_s.not_nil!
      rescue
        Log.for(self).error { body }
        return "ai prompt error occured"
      end
    end
  end
end
