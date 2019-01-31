# random-generator

The purpose of this application is to test the open weather API

### Languages used

Ruby

## Getting Started

### Prerequisites

Install a code editor (e.g. VS Code)

Install Ruby

Navigate to https://openweathermap.org and create an account.

Copy the API key they give you, create a .env file and insert

```
WEATHER_API_KEY='Insert your key here'
```

Replace 'Insert your key here' with your new API key

### How to download

Go to https://github.com/ArnieEC/weather-api
Click 'clone or download'
Download the zip
Open the zip in the code editor of your choice

## How to use

Add the files to your work

Install the gems, it is recommended to run bundle.

To run the test type rspec in the terminal


### How to test the code

In the terminal run 

```
rspec --init
```

then in the spec_helper.rb file put 
```
require 'rspec'

RSpec.configure do |config|
  config.formatter = :documentation
end
```

along with the necessary 'require_relative' paths


then run rspec


## Challenges faced

1. Searching for each individual postcode
2. Thinking of how much testing needs to be done
3. Designing the tests