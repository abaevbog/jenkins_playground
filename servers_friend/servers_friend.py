from flask import Flask, escape, request
import random 

app = Flask(__name__)

@app.route('/')
def wave():
    words = ['Hi', 'Hello', 'What up', 'Greetings', 'Kuku']
    word = words[random.randint(0,len(words)-1)]
    return word

if __name__ == '__main__':
    app.run()