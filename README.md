# BootstrapConfirm

Bootstrap confirm gem provides bootstrap style confirmation box that integrates easily with rails application.


## Usage

Add following line to Gemfile and run `bundle`.
```ruby
    gem 'bootstrap_confirm'
```
Add following line to `app/assets/javascripts/application.js`
```
    //= require bootstrap_confirm
```
Add partial to layout that you are using for example: `application.html.erb`
```
    <%= render partial: 'bootstrap/confirm_box' %>
```

Finally, specify the button/link you want to add confirmation on. For example:
```ruby
    <%= link_to "Delete", article_path(article), method: :delete, data: { bootstrap_confirm: true, title: 'Delete', message: 'Are you sure you want to delete this article ?' } %>
```
`data-title`: will add title to confirmation box, default is: **Confirm**
`data-message`:  will show message specified in message, default is: **Are you Sure ?**

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/abhikanojia/bootstrap_confirm. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BootstrapConfirm project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/abhikanojia/bootstrap_confirm/blob/master/CODE_OF_CONDUCT.md).

