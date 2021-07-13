romparl02
Romanian parliament transcripts database (1996-2020 oct.) with full seed and Rails DB explorer

todo -> Validate/Improve Data -> Build Frontend

PURPOSE

The aim here is to make this dataset more accessbile. This app will lower the entry barrier of working with this dataset by allowing users to extract data chunks of interest that can afterwords be explored and sutdied in more readlily avialable and familiar tools. (I'm thinking mainly Excel/LibreCalc or student GUI statistical software.)

WORK IN PROGRESS

This application contains all Romanian Parliament Transcirpts from 1996 to October 2020 with aditional fileds such as date, party, county where speaker elected, year when speaker born, etc. However, the records are not sufficiently accurate. Feel free to explore and ideally identify and fix sistemic scraping flaws. If you want a more homogenous dataset see: https://zenodo.org/record/3332908

HOW TO

Clone repository (or download)

Install or make sure you have rails 5.2+ and ruby 2.5+ installed

open terminal in directory and run

bundle install 
rails db:migrate --seed files too large - ADD LINK  
rails db:seed (might take a while... over 5 minutes less than 1 hour ... I guess) 
rail s

navigate to localhost:3000/rails/db


#####

