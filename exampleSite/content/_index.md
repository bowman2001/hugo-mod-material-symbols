---
title: Hugo module for Material Symbols
---

The module provides a **partial** to place in templates and a **shortcode** for Markdown content.

## SYNTAX

### Partial

The partial `material-symbol.html` expects a map (`dict`) as argument which needs to contain the icon filename as identifier (without the suffix `svg`) and the current context. The context is only used in case of errors:

```go-html-template
{{ partial "material-symbol.html" (dict "id" "preview" "ctx" .) }}
```

Examples are included after the title and before the content.

### Shortcode

The shortcode expects the icon filename without the suffix:

```md
{{</* material-symbol preview */>}}
```

#### Examples 

{{< material-symbol preview >}} {{< material-symbol engineering >}} {{< material-symbol volcano >}}
{{< material-symbol wall_art >}} {{< material-symbol wallpaper_slideshow >}} {{< material-symbol wash >}} {{< material-symbol upcoming >}} {{< material-symbol unknown_2 >}} {{< material-symbol unknown_5 >}} {{< material-symbol upgrade >}} and some normal text

## HTML output

The partial and the shortcode wrap the inline SVG for the icons in a `<span>`. This tag may include the class attribute which is configured in the data folder. We can override the default in our project:

Create a folder `materialSymbol` and therein the file `params.yaml` (or .toml, .json) with the parameter `class`.
