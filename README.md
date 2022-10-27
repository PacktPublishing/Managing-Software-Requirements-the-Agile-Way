# Managing Software Requirements the Agile Way

<a href="https://www.packtpub.com/business-other/managing-software-requirements-the-agile-way?utm_source=github&utm_medium=repository&utm_campaign="><img src="https://images-na.ssl-images-amazon.com/images/I/51I0zwmGBtL._SX403_BO1,204,203,200_.jpg" alt="Managing Software Requirements the Agile Way" height="256px" align="right"></a>

This is the code repository for [Managing Software Requirements the Agile Way](https://www.packtpub.com/business-other/managing-software-requirements-the-agile-way?utm_source=github&utm_medium=repository&utm_campaign=), published by Packt.

**Bridge the gap between software requirements and executable specifications to deliver successful projects**

## What is this book about?
Studies on software project delivery show that the most common cause of failure is mismanagement of the project’s requirements. This book takes a holistic approach to managing requirements to show you how to bridge the gap between requirements and specifications and deliver a successful software project that meets your client’s expectations.

This book covers the following exciting features:
* Kick-start the requirements-gathering and analysis process in your first meeting with the client
* Accurately define system behavior as features
* Model and describe requirement entities using Impact Mapping and BDD
* Create a feature-based product backlog and use it to drive software development
* Write verification code to turn features into executable specifications
* Deliver the right software and respond to change using either Scrum or Kanban
* Choose appropriate software tools to provide transparency and traceability to your clients

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1800206461) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter02.

The code will look like the following:
```
require 'watir'
require 'webdrivers'
require 'minitest'
```

**Following is what you need for this book:**
This book is for software engineers, business analysts, product managers, project managers, and software project stakeholders looking to learn a variety of techniques and methodologies for collating accurate software requirements. A fundamental understanding of the software development life cycle (SDLC) is needed to get started with this book. Although not necessary, basic knowledge of the Agile philosophy and practices, such as Scrum, along with some programming experience will help you to get the most out of this book.

With the following software and hardware list you can run all code files present in the book (Chapter 1-10).
### Software and Hardware List
| Chapter | Software required | OS required |
| -------- | ------------------------------------ | ----------------------------------- |
| 8 | Ruby 2.5.x | Mac OS X, and Linux (Any) |

We also provide a PDF file that has color images of the screenshots/diagrams used in this book. [Click here to download it](https://static.packt-cdn.com/downloads/9781800206465_ColorImages.pdf).

### Related products
* Modern Computer Architecture and Organization [[Packt]](https://www.packtpub.com/cloud-networking/modern-computer-architecture-and-organization?utm_source=github&utm_medium=repository&utm_campaign=) [[Amazon]](https://www.amazon.com/dp/1838984399)

* Solutions Architect's Handbook [[Packt]](https://www.packtpub.com/web-development/solution-architect-s-handbook?utm_source=github&utm_medium=repository&utm_campaign=) [[Amazon]](https://www.amazon.com/dp/1838645640)

## Get to Know the Author
Throughout his career, **Fred Heath** has worked at every stage of the software development lifecycle, from writing code and designing interfaces to leading projects and dealing with clients. He has worked in a wide variety of industries, such as telecoms, defence and education and has experience in a plethora of programming languages and platforms. He is a Microsoft Certified Professional and Professional ScrumMaster I. Currently he is working on developing software for the Educational sector. This book is the distillation of Fred's 24 years of professional experience, including 11 years of agile development methods.

### Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSdy7dATC6QmEL81FIUuymZ0Wy9vH1jHkvpY57OiMeKGqib_Ow/viewform) if you have any feedback or suggestions.


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


### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781800206465">https://packt.link/free-ebook/9781800206465 </a> </p>