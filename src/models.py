from transformers import pipeline

# https://huggingface.co/facebook/opt-125m
generator = pipeline('text-generation', model="facebook/opt-125m", do_sample=True)
