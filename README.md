Brian Davies' EDA Course Project 1
==================================

Hello to all my Peer Assessors!

You should find four __.R__ files and four corresponding __.png__ files
in this repo

How to run the R files
----------------------

I can't be bothered to comment them all, so I'm describing the basic structure
and how-to here.

* __First__, create a clean directory and copy my four files __plot*.R__ into it

* Everything else happens in the same directory

* Download the example dataset from
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip -- keep
the same filename

* Unzip it. This will give you __household_power_consumption.txt__

* Load and source each __plot*.R__ in turn from inside R studio (__setwd()__'ed to
the same place, duh). You will get four files called __plot*.png__ corresponding
to the exemplars in the course rubric.

* _That's All, Folks!_

What happens inside the R files
-------------------------------

Each one does basically the same thing.

* The whole dataset is loaded into a frame called __allData__

* The requisite two days are copied into a frame called __twoDays__

* An extra field called __DateTime__ is calculated

* Graphics output redirected to PNG

* Graph drawn, any auxiliary variables like legend text calculated on the fly

* PNG device turned off
