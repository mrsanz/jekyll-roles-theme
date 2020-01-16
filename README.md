# jekyll-roles-theme

Welcome to the Community Roles jekyll-theme.  This theme is designed to host and share community processes and roles as a set of GitHub Pages.

## Notable Features

* Pre-defined Roles. Create an empty page in your site with the same name as the role and it will be pre-populated with the corresponding [role templates](_includes/default_roles).
* Pre-defined template content in [`/roles`](/roles)
* Landing page to easily display information about your community and view all of the roles that your community uses.

## Generate a blank Github Pages site

Follow [these instructions](newsite.md) to generate a new Jekyll GitHub pages site.  The remainder of the instructions in this document are focused on ensuring the theme works well for you.

## Theme Installation

Installing the theme consists of a few parts

1. Replace the default theme `minima` with a `remote_theme`
1. Configure your `_config.yaml`
1. Add a homepage summary for your community.
1. Copy over any of the default roles, including any jekyll `front-matter` options
1. Update the durations and descriptions to suit your own needs for the default roles.

### Replace the default theme `minima` with a `remote_theme`

Replace `theme` in your `_config.yaml` with this line:

```yaml
remote_theme: mrsanz/jekyll-roles-theme
```

### Configure your `_config.yaml`

Setup links to relevant documentation in your `_config.yaml`.  These links are then available globally.  This generates a list of markdown [reference links](https://daringfireball.net/projects/markdown/syntax#link) in each page of your site.  

```yaml
# links will show up as reference links on each role page
links:
  # Chat is a link to the main chat room for your community
  chat: https://slack.com/
  # Organizers is a link to a chat room for anyone that wants to help organize a community. (optional)
  organizers: https://slack.com/
  # Folder is where any agendas or notes lives, typically these live on Google Drive or Microsoft OneDrive, but they could be a GitHub wiki.
  folder: https://drive.google.com/drive/folders/
  # Calendar is a link to a shared calendar showing upcoming invitations.
  calendar: https://calendar.google.com/calendar?hash
```

If for some reason your links show without a link e.g. ([chat]) simply add the following to the end of your markdown.
```
{% include links.md %}
```


###  Add a homepage summary for your community.

Modify your `index.md` in the root of your theme to customize your home page with any message you want to be front and center to your community.
``` md
---
layout: home
---
## Welcome to our community.  

Join our community slack channel [#community-slack][chat]

Join our organizers slack channel [#community-slack-organizers][organizers]
{% include links.md %}
```

### Copy over default roles, updating Jekyll `front-matter`

Copy over any role templates [`/roles`](/roles) you wish to adopt.  Add any new roles you wish with the following front matter.  Use the [`roles/generic_template.md`](roles/generic_template.md) as a template for new roles.

```yaml
---
layout: role
title: <title>
time: <duration in minutes, hours>
description: <short description>
---
```

***Custom configurations*** 

- Scheduler Role
  Some groups use google or one drive to manage their calendars for scheduling.  
``` yaml
# _config.yaml
reference: google
# reference: onedrive
```

- Facilitator Role
  Some groups will review a backlog a part of their agenda.  If your group does you can add the front-matter below to 
  add instructions and tips about reviewing a shared backlog.
```yaml
backlog: true
``` 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mrsanz/jekyll-roles-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [ISC License](https://opensource.org/licenses/ISC).

