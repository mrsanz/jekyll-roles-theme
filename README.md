# jekyll-roles-theme

Welcome to the Community Roles Jekyll theme.  This theme is designed to host and share community group process and roles as a set of GitHub Pages.   


## Notable Features

* Pre-defined Roles. Create an empty page in your site with the same name as the role and it will be pre-populated with the corresponding [role templates](_includes/default_roles).
* Pre-defined meta templates content in [`/roles`](/roles)
* Landing page to easily display information about your community and view all of the roles that your community uses.

## Installation

And add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: mrsanz/jekyll-roles-theme
```

Configure any relevant `_config.yaml` settings.  The full set of options are below

```yaml
# links will show up as reference links on each page, new and included roles
links:
  chat: https://slack.com/
  folder: https://drive.google.com/drive/folders/
  calendar: https://calendar.google.com/calendar?hash

# reference: outlook
reference: google
```

Copy over any role templates [`/roles`](/roles) you wish to adopt.  Add any new roles you wish with the following front matter

```yaml
---
layout: role
title: <title>
time: <duration in minutes, hours>
description: <short description>
---
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mrsanz/jekyll-roles-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [ISC License](https://opensource.org/licenses/ISC).

