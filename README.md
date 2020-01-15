# jekyll-roles-theme

Welcome to the Community Roles jekyll-theme.  This theme is designed to host and share community processes and roles as a set of GitHub Pages.

## Notable Features

* Pre-defined Roles. Create an empty page in your site with the same name as the role and it will be pre-populated with the corresponding [role templates](_includes/default_roles).
* Pre-defined template content in [`/roles`](/roles)
* Landing page to easily display information about your community and view all of the roles that your community uses.

## Installation

And add this line to your Jekyll site's `_config.yml`:

```yaml
# _config.yaml
remote_theme: mrsanz/jekyll-roles-theme
```

Configure any relevant `_config.yaml` settings.  The full set of options are below

```yaml
# _config.yaml
# links will show up as reference links on each page, new and included roles
links:
  chat: https://slack.com/
  organizers: https://slack.com/
  folder: https://drive.google.com/drive/folders/
  calendar: https://calendar.google.com/calendar?hash
```

Modify your `index.md` in the root of your theme to customize your home page with any message you want to be front and center to your community.
``` md
---
layout: home
---
Welcome to our community.
Join our community slack channel [#community-slack][chat]
Join our organizers slack channel [#community-slack-organizers][organizers]
{% include links.md %}
```

## Add your roles
Copy over any role templates [`/roles`](/roles) you wish to adopt.  Add any new roles you wish with the following front matter.  Use the [roles/generic_template](roles/generic_template.md) as a template for new roles.

```yaml
---
layout: role
title: <title>
time: <duration in minutes, hours>
description: <short description>
---
```

***Custom config for the Scheduler Role***

The following reference key is required for the `scheduler` role. Valid options are: `google`, `onedrive`
``` yaml
# _config.yaml
reference: google
# refernece: onedrive
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mrsanz/jekyll-roles-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [ISC License](https://opensource.org/licenses/ISC).

