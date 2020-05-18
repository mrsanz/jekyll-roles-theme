# jekyll-roles-theme

Welcome to the Jekyll Community Roles theme.  This theme is designed to host and share community processes, roles and important links as a set of GitHub Pages.  Since building up a small community is integral to any InnerSource effort, this is a great starting point for InnerSource projects as well.

## Notable Features

* Clean landing page, to display important information, roles and general purpose information about your community.
* Pre-defined roles / templated content in [`/roles`](/roles)
* Fully customizable roles!  Just add your own content to the bottom or override the default role content.
* Add your own roles utilizing the [generic template](/roles/generic_template.md). 
* Global links!

## Generate a blank Github Pages site

Follow [these instructions](newsite.md) to generate a new Jekyll GitHub pages site.  The remainder of the instructions in this document are focused on ensuring the theme works well for you.

# Theme Installation

Installing the theme consists of a few parts

1. Replace the default theme.
1. Configure your `_config.yaml`.
1. Add a homepage summary.
1. Copy over any of the default roles.
1. Update `front-matter` options for roles.

## Replace the default theme

Replace the `theme` with this line in your Jekyll site's `_config.yml`:

```yaml
remote_theme: mrsanz/jekyll-roles-theme
```

## Configure your `_config.yaml`


***Configure the title of your site***

Add a title to your site in the `_config.yaml`
```
title: Kubernetes Community
```

***Community Hub***
You may want to connect your community back to a central community hub or larger affiliation.  To do this add a backlink to your sites `_config.yaml`.  This will show up in the top nav of your site. Use a command and space as divider between the title and url.

```yaml
backlink: Community Meetings, https://confluence.com/community-space
```

Additionally there may be related communities that you want to make folks aware of as they depend upon or co-labor with your project.  To include links to these communities pages add them with the related_communities configuration.

```yaml
related_communities:
  - AWS Containers, https://pages.github.com/aws-containers-community
  - Docker, https://www.docker.com
```

***Setup links***

Setup links to relevant documentation in your `_config.yaml`.  These links are then available globally.  This generates a list of markdown [reference links](https://daringfireball.net/projects/markdown/syntax#link) in each page of your site.  

```yaml
# links will show up as reference links on each role page
links:
  # Chat is a link to the main chat room for your community
  chat: https://slack.com/<link-to-channel>
  # Organizers is a link to a chat room for anyone that wants to help organize a community. (optional)
  organizers: https://slack.com/<link-to-organizers-channel>
  # Folder is where any agendas or notes lives, typically these live on Google Drive or Microsoft OneDrive, but they could be a GitHub wiki.
  folder: https://drive.google.com/drive/folders/
  # Calendar is a link to a shared calendar showing upcoming invitations.
  calendar: https://calendar.google.com/calendar?hash
  # Location of the document containing regular metrics for the effort.
  metrics_document: https://docs.google.com/...
```

If for some reason your links show without a link e.g. ([chat]) simply add the following to the end of your markdown.
```
{% include links.md %}
```

## Add a homepage summary.

Modify your `index.md` in the root of your theme to customize your home page with any message you want to be front and center for your community.
``` md
---
layout: home
---
## Welcome to our community.  

Join our community slack channel [#community-slack][chat]

Join our organizers slack channel [#community-slack-organizers][organizers]

Check out our documentation [folder]
{% include links.md %}
```

## Copy over any of the default roles

Copy over any role templates [`/roles`](/roles) you wish to adopt.  Add any new roles you wish with the following front matter.  Use the [`roles/generic_template.md`](roles/generic_template.md) as a template for new roles.

```yaml
---
layout: role
title: <title>
time: <duration in minutes, hours>
description: <short description>
---
```

## Update `front-matter` options for roles.

Update time durations and descriptions to meet your own community needs.  Documenting precise times will enable folks to more easily sign up for roles.  

There are a few custom options for specific roles to consider.

- Scheduler Role
  Some groups use google or one drive to manage their calendars for scheduling.  Include google or one drive specific instructions with the following option.
``` yaml
reference: google
# reference: onedrive
```
  Some groups have an infinite calendar series while others schedule just one calendar instance at a time.
  Specify your scheduling preference with the `invite_type` option.
``` yaml
invite_type: series
# invite_type: instance
```

- Facilitator Role
  Some groups will review a backlog as a part of their facilitator's agenda.  Include project_board specific instructions with the following option.
```yaml
project_board: true
``` 

***Overwrite default role content***

Say you want to have a facilitator role but want to define it yourself  add the following option to your roles `front-matter`.
```md
# role/facilitator.md
overwrite: true
```

This will allow your markdown in that page to fully overwrite any role default content.  If you do override content you'll need to re-add the global links with this snippet.
```
{% include links.md %}
```

# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mrsanz/jekyll-roles-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

# License

The theme is available as open source under the terms of the [ISC License](https://opensource.org/licenses/ISC).

