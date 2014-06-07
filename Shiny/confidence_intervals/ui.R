# Copyright 2014, Phillip Alday
#
# This file is part of Confidence Intervals.
#
# Confidence Intervals is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

library(shiny)
require(markdown)

shinyUI(fluidPage(
  titlePanel("Confidence Intervals"),
  
  sidebarLayout(
    sidebarPanel(h2("Simulation Parameters")
                 ,  sliderInput("conf.level"
                                ,"Confidence Level"
                                ,min = 0.01
                                ,max = 0.99
                                ,value = 0.95)
                 ,  sliderInput("sd"
                                ,"Standard Deviation"
                                ,min = 1
                                ,max = 10
                                ,value = 1)
                 ,  sliderInput("population"
                                ,"Number of points to simulate for the population"
                                ,min = 10
                                ,max = 10000
                                ,value = 250)
                 ,  sliderInput("n"
                                ,"Number of points to use in each sample"
                                ,min = 1
                                ,max = 100
                                ,value = 10,
                                ,animate=animationOptions(interval=2000,loop=TRUE))
                 ,h5("Features that may slow things down, but provide a finer picture")
                 ,  sliderInput("nsamples"
                                ,"Number of samples"
                                ,min = 1
                                ,max = 1000
                                ,value = 100)
                 ,  sliderInput("bw"
                                ,"Bin width for the historgram"
                                ,min = 0.001
                                ,max = 1
                                ,value = 0.1)
                 , actionButton("runagain",label = "Run Again")                
    )
<<<<<<< HEAD
    ,mainPanel(h2("Sample means")
               ,plotOutput("sample.means")
               #,h2("Confidence Interval (via t.test)")
               #,uiOutput("ttest")
               ,h2("Sample distributions")
               ,plotOutput("sample.distributions")
               ,h2("Population")
               ,plotOutput("population.distribution")
=======
    ,mainPanel(h2("Sample distributions")
               ,plotOutput("sample.distributions",height=768)
               ,includeMarkdown("confidence_intervals.md")

>>>>>>> e2d60c36c91674f21010a69b256d3e299f229819
    )
  )
  
  
))
