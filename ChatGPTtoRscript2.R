#######this will be the R code for linking ChatGPT to R
###note this is the same as the RMarkdown######

#install openai package
install.packages("openai", dependencies = T, type = "source")

library(openai)
### retrieve API 'secret key' from openai.com ###
### create account -> go to 'Documentation' 
              ###   -> go to 'Quickstart Tutorial' 
               ###  -> scroll to 'Add your API key'
                ### -> click and copy 'Create new secret key'

### my secret key = sk-### do not share

text_prompt <- "Write a paragraph about why R is so great."

response <- create_completion(model = "text-davinci-003", 
                              prompt = text_prompt, max_tokens = 1000, 
                              open_api_key = "sk-###",
                              temperature = 0)

### may receive an error (e.g., "Error: OpenAI API request failed [429]:
### You exceeded your current quota, please check your plan and billing details."")