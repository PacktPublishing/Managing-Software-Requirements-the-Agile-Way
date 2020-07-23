# Learn-Agile-Requirements-Management
Learn Agile Requirements Management, Published by Packt



## Introduction
This repository contains code samples used in Chapter 8 - Writing Automated Verification Code, of the book.

The Feature and Step Definitions in this project are used to verify a *Traveller logs in* scenario against the [PHPTravels](https://www.phptravels.net/) demo web site.

This project demonstrates three approaches for writing Step Definitions

1. The 'classic' approach, i.e. no layering or abstractions.
2. The Page Object pattern.
3. The Facade pattern.

### Important note

Cucumber expects to find a unique definition for each Scenario Step. As we have, in this project, multiple Step Definitions for the same steps (demonstrating the three different approaches) we need to expicitly tell cucumber to exclude the Step Definitions we don't want to run.

For instance to run the Page Object pattern definitions, we need to tell Cucumber to exclude the other two Step Definition files. We do this thus:

```
## run using traveler_login_page_objects.rb 
cucumber --exclude traveler_login_[cf]
``` 

Similarly, we can use the other patterned Step Definitions:

```
## run using traveler_login_facade.rb 
cucumber --exclude traveler_login_[cp]

## run using traveler_login_classic.rb 
cucumber --exclude traveler_login_[fp]


``` 

## How to run the code samples

1. [Install the Ruby version](https://www.ruby-lang.org/en/documentation/installation/) specified in the Gemfile. 
2. Clone this repository to your machine and `cd` into its directory.
3. On the command line, enter `bundle install` to install dependencies.
4. On the command line, enter `cucumber --exclude traveler_login_[fp]` to verify the features using a specific Step Definition pattern, as described in Introduction.


