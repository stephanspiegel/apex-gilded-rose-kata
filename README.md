# Gilded Rose Refactoring Kata for Salesforce Apex

<!-- ABOUT THE PROJECT -->
## What is this?

A [code kata](http://codekata.com/kata/codekata-how-it-started/) is a coding exercise with a focus on learning new skills (as opposed to solving a specific problem). The Gilded Rose Refactoring Kata started as an [ exercise in C# ](https://github.com/NotMyself/GildedRose), and has been [ported to many other programming languages](https://github.com/emilybache/GildedRose-Refactoring-Kata). For more on the history of this kata, see the [Readme for Emily Bache's project](https://github.com/emilybache/GildedRose-Refactoring-Kata#readme).

The aim of this kata is to learn how to put an existing code base under unit tests and then refactor it in small steps, as opposed to solving the problem in a re-write from scratch.

The [problem statement](https://github.com/stephanspiegel/apex-gilded-rose-kata/blob/main/GildedRoseRequirements.txt) of this kata reads a lot like a typical scenario one would encounter in a Salesforce org, and the existing code reminds me of many poorly implemented classes I've encountered in various orgs (some of which I may or may not have written). It seems particularly suited for developers wanting to expand their Apex skills, and so this is my Salesforce version of the kata.

<!-- GETTING STARTED -->
## Getting Started

You'll most likely want to complete this exercise in a scratch org.

### Prerequisites

* The [sfdx cli](https://developer.salesforce.com/tools/sfdxcli)
* An org with Dev Hub enabled
* git

### Project setup
1. Clone the repository
```sh
    git clone https://github.com/stephanspiegel/apex-gilded-rose-kata.git
```
2. Change into project directory
```sh
    cd apex-gilded-rose-kata
```
3. Spin up a scratch org
```sh
    sfdx force:org:create --definitionfile config/project-scratch-def.json --durationdays 30 --setalias gilded-rose -s
```
If you don't have your Dev Hub configured as a default, you may need to run this first:
```sh
    sfdx config:set defaultdevhubusername=[yourDevHubAlias]
```
4. Push the code 
```sh
    sfdx force:source:push
```

Now the fun begins!

<!-- SUGGESTED STEPS -->
## Suggested steps:

1. This kata provides one unit test that doesn't pass. Make it pass, then add more unit tests to cover all [requirements](https://github.com/stephanspiegel/apex-gilded-rose-kata/blob/main/GildedRoseRequirements.txt) except for the new functionality.
2. Taking small steps, refactor the existing code. Make sure the unit tests continue to pass.
3. Implement the new functionality, along with unit tests to cover it.
