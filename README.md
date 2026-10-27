# Knights Travails

A graph traversal project from [The Odin Project](https://www.theodinproject.com/) curriculum, built using **Ruby**. The objective is to find the shortest possible path for a knight on a standard 8x8 chessboard using search algorithms (Breadth-First Search - BFS).

## About the Project

In this project, the chessboard is treated as an implicit graph where:
- Each square represents a **vertex** `[x, y]` (with coordinates ranging from 0 to 7).
- Each valid knight move represents an **edge** connecting the vertices.
- **BFS (Breadth-First Search)** is utilized to guarantee the absolute shortest path between a starting square and a target square.

## Built With

- **Ruby**
- **RSpec** (for unit testing)
- **RuboCop** (for code style and linting)

## Getting Started

Follow these steps to set up the project locally on your machine.

### Prerequisites

Make sure you have Ruby installed on your system.

### Installation

1. Clone the repository:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/knights_travails.git](https://github.com/YOUR_USERNAME/knights_travails.git)
   cd knights_travails