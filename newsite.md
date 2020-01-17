
# Create a new GitHub site

Follow these instructions to setup a GitHub pages website with this theme.


First open up GitHub and create a new repository.  For the sake of this example we'll call our community site `test`.

Clone it locally.
```bash
git clone git@github.com:mrsanz/test.git
```

Follow the instructions to [install jekyll](https://jekyllrb.com/docs/) but instead generate the site overtop of your cloned repo.

```bash
jekyll new test --force
```

Now you have a blank Jekyll site ready to accept your content!

## Important Notes 

- Configuring `url` and `baseurl` in `_config.yml` have a big impact on how your site works.

  To configure it properly set `baseurl` should really be set to the subpath for your site, e.g. /test in this case 
  The `url` of the site should be set to something like "https://mrsanz.github.io".


The Jekyll generator uses the extension `.markdown` for index and other markdown, but I like to rename these to `.md`  Either file extension will work.

# Finish up

Follow the rest of the [instructions in the main README.md](README.md) to setup the theme.

Once you are all set push your changes up to GitHub and configure pages in the settings tab of GitHub. 

```bash
git commit -am 'initial commit for site'
git push origin master # or gh-pages
``` 

Profit!
