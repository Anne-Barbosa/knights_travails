# Knights Travails

A graph traversal project from [The Odin Project](https://www.theodinproject.com/) curriculum, built using **Ruby**. The objective is to find the shortest possible path for a knight on a standard 8x8 chessboard using search algorithms (Breadth-First Search - BFS).

## Features

- **Board Logic:** Validates 8x8 chessboard coordinates and generates all legal knight moves from any given position.
- **Shortest Path Algorithm:** Implements Breadth-First Search (BFS) to guarantee the minimum number of moves between any two squares.
- **Clean Code & Style:** Adheres strictly to Ruby style guidelines with **zero RuboCop offenses**.
- **Tested:** Comprehensive unit testing suite written with **RSpec**.

---

## Prerequisites

Make sure you have the following installed on your system:
- Ruby (version 3.x recommended)
- Bundler

---

## Installation

1. Clone the repository:
   ```bash
   git clone [https://github.com/seu-usuario/knights-travails.git](https://github.com/seu-usuario/knights-travails.git)
   cd knights-travails
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
## Usage

You can test the knight's movement by running the simulation script:

```bash
   ruby main.rb
   ```
## Running Tests & Linter

 - Run RSpec tests:
 ```bash
   bundle exec rspec
   ```
 - Run RuboCop (linting):
 ```bash
   bundle exec rubocop
   ```
## Author

Developed as part of The Odin Project curriculum.