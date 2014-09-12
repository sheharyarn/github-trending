github-trending
===============

`github-trending` is a gem that fetches [Trending repositories on GitHub](https://github.com/trending). It's functionality was extracted from the command-line utility [`git-trend`](https://github.com/rochefort/git-trend), so almost all of the code is written by **[@rochefort](https://github.com/rochefort)**.


## Installation

Add this line to your application's Gemfile:

    gem 'github-trending', github: 'sheharyarn/github-trending'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install github-trending


## Usage

Require it if you haven't:

```ruby
require 'github-trending'
```

Get the day's trending repos:

```ruby
repos = Github::Trending.get
repos.each do |r|
  puts "#{r.name} (#{r.star_count} stargazers)"
  puts "--- #{r.description}\n\n"
end

# =>
# sindresorhus/awesome-nodejs (712 stargazers)
# --- A curated list of delightful Node.js packages and resources.
#
# MrSwitch/hello.js (536 stargazers)
# --- A Javascript RESTFUL API library for connecting with OAuth2 services, such as Google+ API, Facebook Graph # and Windows Live Connect
#
# ColdSauce/CosmosBrowserAndroid (391 stargazers)
# --- Cosmos Browser allows a person to connect to the internet through the use of SMS. No data or wifi required.
#
# ...
```

You can also fetch by a specific language:

```ruby
ruby_repos = Github::Trending.get 'ruby'
```

To get a list of all languages:

```ruby
languages = Github::Trending.all_languages
```


## Contributing

1. Fork it ( https://github.com/sheharyarn/github-trending/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
