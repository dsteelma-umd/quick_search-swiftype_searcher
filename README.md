# quick_search-swiftype_searcher

UMD Library Website searcher for NCSU Quick Search utilizing Swiftype.

---

## ARCHIVED REPOSITORY

This repository has been archived, and is no longer being developed or
maintained.

---

## Installation

Include the searcher gem in your Gemfile:

```
gem 'quick_search-swiftype_searcher'
```

Run bundle install:

```
bundle install
```

Include in your Search Results page

```
<%= render_module(@swiftype, 'swiftype') %>
```

## Configuration

The Swiftype searcher requires configuration, such as specific URL to
use in retrieving search results. To set the configuration, create a
"config/searchers/" directory in your application (the "searchers" subdirectory
may need to be created), and copy the "config/swiftype_config.yml" file
in this gem into it. Follow the instructions in the file to configure the
searcher.

Additional customizations can be done by editing the "config/locales/en.yml" file.