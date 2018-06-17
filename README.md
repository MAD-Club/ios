# MADClub iOS App

Developed by the students of St. Clair College

# Setting up your iOS Project

## Requirements

You'll need the following things:

- Ruby (Good to go on Mac)
- Bundler (Ruby Gem aka a dependency manager for gems)
- terminal

## Setting it up

Go into your project directory:

## Automatic

1. run `bin/setup.sh`. Please do not run as sudo/root.

## Manual

1. Do `gem install bundler` to install `bundler`.
1. Once completed, do `bundle install` to install the `Gemfile`.
1. When that is done, we need to install the pod library. To do so, do: `bundle exec pod install`.
  1. What `bundle exec` does is it uses the bundler's information, and uses that current pod library it downloaded. That way we know what version of the pod we are running and that we are all on the same version for development.
1. Open up `.xcworkspace`, not `.xcodeproj`! You won't get the libraries that we use if you open up `.xcodeproj`.
  1. Always open up `.xcworkspace`!

## Troubleshooting

**I'm getting an error with something about my podfile being out of sync! What should I do?**

The first thing you should do is close your `.xcworkspace`, and do `bundle exec pod install` and re-open your `.xcworkspace` file.

**For some reason X module can't be found! Why?**

Sometimes XCode has some odd glitches. Do a build and see if that takes care of it. If not, do a reinstall of the podfiles, and reopen your `.xcworkspace` file.