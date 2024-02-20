# Project Name: Web Automation with Watir

## Description

This project is a web automation suite developed using Watir and the Page-Object gem in Ruby. It's designed to automate user interactions on the [Sauce Labs Demo Site](https://www.saucedemo.com/), covering end-to-end scenarios like user login, product selection, cart management, and checkout process.

## Features

- **Login Automation**: Automates the login process using valid credentials.
- **Product Handling**: Demonstrates adding and removing products from the shopping cart.
- **Cart Validation**: Ensures that selected products are correctly added to and removed from the cart.
- **Cross-Browser Support**: Tests can be run on multiple browsers (Chrome, Firefox) by configuring the browser driver.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Ruby (version 2.7 or newer) installed on your machine.
- Bundler for managing Ruby gems.
- ChromeDriver (or another WebDriver compatible with your browser of choice) installed and accessible in your system's PATH.

## Installation

To set up the project locally, follow these steps:

1. Clone the repository to your local machine:

    ```
    git clone https://github.com/goldenguts/saucelabs_demo
    ```

2. Navigate to the project directory:

    ```
    cd your-project-name
    ```

3. Install required Ruby gems:

    ```
    bundle install
    ```

## Usage

To run the test suite, use the following command from the root of the project:

```
bundle exec rspec tests/demo_test.rb
```


## Structure

- `lib/pages`: Contains the Page Object models for the web application.
- `tests`: Includes RSpec test files that implement the test scenarios.
- `Gemfile`: Lists the Ruby gem dependencies for the project.