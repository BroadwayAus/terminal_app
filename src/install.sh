#install homebre
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#install ruby
brew install ruby
#install bundler
gem install bundler
#install Ruby gems
bundle install
#move to src folder
cd src
echo Congratulations! You can now run ruby index.rb to run 40k Point Tracker!