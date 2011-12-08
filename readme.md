# Announcements engine for Refinery CMS.

Announcements is an engine for Refinery CMS to manage temporary announce. It can be used, for example, as an advertising system for your website.

## How to install

Edit your `Gemfile` :

    gem 'refinerycms-announcements'

Update your bundle :

    bundle install

Migrate your database :

    rake db:migrate

Thant's it! You can now log into your Refinery CMS administration panel and start using Announcements.

## What the plugin does

* Manage temporary announcements : Announcement has a start and an end date, between those dates, the announcements is displayed on your website. Before and after, it doesn't. Simple.
* Announcement can has a picture to illustrate it

## How-to override views

* Create the folder `app/views/announcements`
* Create a file named `app/views/announcements/index.html.erb` to override index.html.erb
* Create a file named `app/views/announcements/show.html.erb` to override show.html.erb

## How-to access your announcements sitemap

Point your browser to
    http://wwww.mysite.com/announcements/sitemap.xml

## Support

If you have any trouble using this engine, please let me know by e-mail at : cedric[AT]studio-sept[DOT]be

## License

Announcements engine for Refinery CMS is released under the [MIT license] and is copyright (c) 2011 [Studio7](http://www.studio-sept.be)