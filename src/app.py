from api_wrapper import get_response

# messages should be of the form:
# [{"role":"user", "content": "Hello world!"}]
messages = [{"role":"user", "content": "Hello world!"}]

## TODO: implement logic for chatting

response = get_response(messages)
print(response)
