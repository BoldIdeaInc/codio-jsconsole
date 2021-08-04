# Codio JS Console Preview Wrapper

This can be used to enable web page previews with an embedded javascript
console, powered by [jsconsole][1]. To use it, clone this repo to a directory in
your box workspace called `.preview` (or whatever you want):

    $ git clone https://github.com/BoldIdeaInc/codio-jsconsole .preview

Then, configure your preview menu by clicking the Preview drop-down, and
clicking "configure" (or you can edit the `.codio` file directly.

Create preview URLs like so:

```json
{
  // Configure your Run and Preview buttons here.

  // Run button configuration
  "commands": {
  },

  // Preview button configuration
  "preview": {
    "Home page": "https://{{domain}}/.preview/#/",
    "Current page": "https://{{domain}}/.preview/#{{path}}",
    "Standalone JS console": "https://{{domain}}/.preview/#console"
  }
}
```

Now when you preview a page, a javascript console will show below it. The
console is immediately bound to the page, and intercepts all `console.*`
commands, page errors, etc. You can also evaluate code in the console just as
you would in the native console.

When you open the preview in a new browser tab, it will automaticaly redirect to
the source page without the wrapper.
