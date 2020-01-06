DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    species TEXT,
    description TEXT,
    roundness INTEGER,
    alive BOOLEAN,
    age INTEGER,
    image_url TEXT
);

INSERT INTO animals ( name, species, description, roundness, alive, age, image_url)
VALUES (
    'CLARENCE BODDICKER',
    'HUMAN',
    'BADDIE',
    8,
    0,
    50,
    'https://vignette.wikia.nocookie.net/robocop/images/d/dc/ClarenceBoddicker.jpg/revision/latest/scale-to-width-down/350?cb=20160816063931'
);

INSERT INTO animals ( name, species, description, roundness, alive, age, image_url)
VALUES (
    'RUBY',
    'DOG',
    'THE BEST DOG',
    3,
    1,
    50,
    'https://s3.amazonaws.com/viking_education/web_development/prep_coding/ruby_small.jpg'
);