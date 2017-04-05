# Lab 6 : Programmatic Design #

## Due Date ##
Tuesday, April 11th at 11:59 pm

## Overview ##

In today's lab, you'll be creating a simple login screen for an app 100% programmatically (no Main.storyboard needed!). Here's a screenshoot of what you'll need to design.

![](/README-images/README-1.png)

## Getting Started ##

To begin the lab, clone the repository onto your personal computer.
	
	git clone https://github.com/YOUR-USERNAME/ios-decal-lab6

To push your changes for the lab, run the following commands in your lab-6 folder.

	git add .
	git commit -m "Finished lab 5"
	git push origin master
	
Once you have done this, you can view the files you pushed at https://github.com/YOUR-USERNAME/ios-decal-lab6. You can then use this repository to submit via Gradescope when you are finished (see the **Submission** section below).

## Getting Started ##

Open the project in Xcode and go into the project navigator. Having finished Project 2 Part 1, you should already be familiar with the code provided. 

For this lab, **you will only be editing ImagePickerViewController.swift and it's corresponding View Controller in Storyboard.**

Although skeleton code is provided, feel free to instead use your finished Project 2 code for this lab (you will need to import the code provided in ImagePickerViewController.swift, and update your storyboard).

## Part 1: Getting rid of Main.storyboard ##

Since we will be creating this application programmatically, first delete **Main.storyboard** from your project files. If you run your application at this point, your app will crash with the following error

      2017-04-05 10:51:49.034 Login[12514:596835] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', 
      reason: 'Could not find a storyboard named 'Main' in bundle NSBundle </Users/paige/Library/Developer/CoreSimulator/Devices/
      17EEA772-3B18-4D40-9A9A-4C97A7E5034B/data/Containers/Bundle/Application/684846F7-9231-4F40-9541-19C090E49415/Login.app>

To fix this, **open up your app's Info.plist, and delete the key `Main storyboard file base name`** (since we do not have a Storyboard file for our application, this key is not valid).

## Part 2: Connecting Outlets ##


## Part 3: Getting User Permissions and Capturing/Displaying Media from User's Device ##

## Grading ##
Once you have finished, please submit your files to [Gradescope](https://gradescope.com/courses/5482). You will need to submit files EVEN if you are being checked off. We have enabled group submission for this assignment, so make sure to include your partner's name if you only worked on one computer.

To submit, please upload your code to either GitHub or Bitbucket, and use the "Github" or "Bitbucket" submission feature on Gradescope. Please check out the [slides in Lecture 3](http://iosdecal.com/Lectures/Lecture3.pdf) for step-by-step submission instructions if you're confused about how to do this (or ask a TA!)

Checkoff Form for  Akilesh's Lab - https://goo.gl/forms/0x2P8vpGRWar7nIX2

Checkoff Form for Paige's Lab - https://goo.gl/forms/Jn8riB5xl0WQWAYQ2
