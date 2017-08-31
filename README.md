# Ruby client for Legacy XML-RPC Infusionsoft Api

[![Gem Version](https://badge.fury.io/rb/legacy_infusionsoft_api.svg)](https://badge.fury.io/rb/legacy_infusionsoft_api)

<a href="https://app.codesponsor.io/link/Z24Ypyn8iC1Q4i6uCwNyLW3r/cavneb/legacy_infusionsoft_api" rel="nofollow"><img src="https://app.codesponsor.io/embed/Z24Ypyn8iC1Q4i6uCwNyLW3r/cavneb/legacy_infusionsoft_api.svg" style="width: 888px; height: 68px;" alt="Sponsor" /></a>

[Legacy Infusionsoft Api](https://github.com/cavneb/legacy_infusionsoft_api) is an interface for accessing [Infusionsoft's](http://help.infusionsoft.com/developers/api-basics) API.

It's based on the [MYOB Api](https://github.com/davidlumley/myob-api) gem and the [Infusionsoft API](https://github.com/davidlumley/infusionsoft-api) gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'legacy_infusionsoft_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install legacy_infusionsoft_api

## Usage

### API Client Setup

Create an api_client:

    api_client = LegacyInfusionsoftApi::Client.new({
      api_key: USERS_API_KEY,
      app_name: USERS_APP_NAME,
    })

The `:api_key` can be found in Infusionsoft under Admin -> Settings -> Application Setttings (Application). The `:app_name` is the subdomain of `app_name.infusionsoft.com`('app_name').

### API Methods

####  Contacts

Return a list of all contacts

    api_client.contact.all

You can get a count of all contacts

    api_client.contact.count

You can execute a block of code while iterating contacts

    api_client.contact.find_each({}, true, 50) do |contacts|
      # contacts.length === 50
      contacts.each do |contact|
        puts contact['Id']
      end
    end

You can also pass a query hash

    api_client.contact.all({
      :FirstName => 'David',
    })

You can create contacts too

    client = api_client.contact.create({
      :FirstName => 'David',
      :LastName  => 'Lumley',
      :Email     => 'david@davidlumley.com.au',
      :Company   => 'Client Heartbeat',
    })

You can also delete contacts by passing an ID

    api_client.contact.delete(16)

Or by passing a query

    api_client.contact.delete({
      :FirstName => 'Trevor',
    })

####  Contact Groups

Return a list of all contact groups

    api_client.contact_group_assign.all

You can also pass a hash query

    api_client.contact_group_assign.all({
      :GroupCategoryId => 12,
    })

####  Contact Group Assignments

Return a list of all contact group assignments (i.e. contacts with a tag or group)

    api_client.contact_group_assign.all

You can also pass a hash query

    api_client.contact_group_assign.all({
      :ContactGroup => 'New Customer',
    })

####  Contact Group Categories

Return a list of all contact group categories

    api_client.contact_group_category.all

You can also pass a hash query

    api_client.contact_group_category.all({
      :CategoryName => 'Custom Tags',
    })

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cavneb/legacy_infusionsoft_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LegacyInfusionsoftApi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/cavneb/legacy_infusionsoft_api/blob/master/CODE_OF_CONDUCT.md).
