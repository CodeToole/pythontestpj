#!/bin/bash

python_interpreter="/usr/bin/python3"  # Adjust if your Python 3 is located elsewhere

$python_interpreter << END_OF_PYTHON
import pytube
from sys import argv
import os

def download_video(link):
    yt = pytube.YouTube(link)
    print("Title: ", yt.title)
    print("Views: ", yt.views) 

    yd = yt.streams.get_highest_resolution()
    yd.download('/home/waitaminute/Downloads/python yt')  

def get_video_info(link):
    yt = pytube.YouTube(link)
    print("Title: ", yt.title)
    print("Views: ", yt.views) 

if __name__ == "__main__":
    if len(argv) > 1:
        link = argv[1]

        while True:
            print("\nWhat would you like to do?")
            print("1. Download the video")
            print("2. Get video information")
            print("3. Exit")

            choice = input("Enter your choice: ")

            if choice == '1':
                download_video(link)
                print("Download complete!")
            elif choice == '2':
                get_video_info(link)
            elif choice == '3':
                break
            else:
                print("Invalid choice. Please try again.")
    else:
        print("Please provide a YouTube video link as a command-line argument.")
END_OF_PYTHON
