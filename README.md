# Metova Dummy

It's a pain to have to setup a testing environment when creating gems. This app includes a Rails skeleton
that can be included in other gems so that everything is already setup.

Gem functionality can just be patched into existing classes, or you can make your own. For example, to test
Devise authentication in a gem, you could just make a new controller and inherit from Metova::Dummy::ApplicationController.

```ruby
class AuthenticationTestController < Metova::Dummy::ApplicationController
  before_action :authenticate_user!
  def secret
    head :ok
  end
end

describe AuthenticationTestController do
  it 'returns a 401 when not authenticated' do
    get :secret
    expect(response.status).to eq 401
  end
end
```

## Installation

Add this line to your gem's gemspec:

```ruby
spec.add_development_dependency 'metova-dummy'
```

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/metova-dummy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
