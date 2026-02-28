name: C Build and Test

on:
  push:
    branches: [ "development", "main" ]
  pull_request:
    branches: [ "development", "main" ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Install dependencies
      run: sudo apt-get update && sudo apt-get install -y build-essential

    - name: Build with make
      run: make

    - name: Check binary exists
      run: ls -l program
