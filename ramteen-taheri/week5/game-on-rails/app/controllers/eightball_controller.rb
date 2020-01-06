class EightballController < ApplicationController
    def home

        greetings = [
            'What is on your mind?',
            'Got a question for me?',
            'Whats up?',
            'Ask me something. Anything.',
            'Enter your question here',
            'Ask me something',
            'Got a question? Fire away!'
        ]

        @greeting = greetings.sample

    end

    def answer
        @answer = [
            'In your wildest dreams',
            'Not a chance!',
            'It is strongly possible',
            'Out of energy. Let me rest!',
            'Yes',
            'No',
            'Strongly Possible',
            'It is slightly possible...',
            'Perhaps if you\'re lucky!',
            'maybe',
            'it is looking pretty grim',
            'only if you stay positive',
            'not going to happen. try something else.',
            'be patient. itll come!'
        ]

        @answer = @answer.sample
    end
end