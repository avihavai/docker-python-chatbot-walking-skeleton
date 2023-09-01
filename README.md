## Walking skeleton for Dockerized Python chatbot with rate limiting

If you wish to use OpenAI API, add your key to `openai.api_key = '#####'` in `api_wrapper.py`.

Build image:

`docker build -t python-chat-app .`

Run built image:

`docker run -it --rm python-chat-app`

Run and build in one command:

`docker run --rm -it $(docker build -q .)`
