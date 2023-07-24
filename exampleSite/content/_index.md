---
title: Hugo module for Material Symbols
---

The module provides a **partial** for template files and a **shortcode** for Markdown files.

## SYNTAX

### Partial

The partial `material-symbol.html` expects a map (`dict`) as argument. This map needs to contain the filename of the icon without the suffix `svg` as identifier and the current context (in case of errors). It may also contain a size:

```go-html-template
{{ partial "material-symbol.html" (dict 
    "id" "preview" 
    "ctx" . 
    "size" "big") }}
```

### Shortcode

The shortcode expects the icon filename without the suffix as the first parameter and the optional size as the second:

```md
{{</* material-symbol preview big */>}}
```

## LAYOUT 

Examples of the partial are included after the title. The following examples are generated with the shortcode.

### Big icons

{{< material-symbol preview big >}} {{< material-symbol engineering big >}} {{< material-symbol volcano big >}} {{< material-symbol wall_art big >}} {{< material-symbol wallpaper_slideshow big >}} 

### Normal icons

{{< material-symbol preview >}} {{< material-symbol engineering >}} {{< material-symbol volcano >}} {{< material-symbol wall_art >}} {{< material-symbol wallpaper_slideshow >}}

### Small icons

{{< material-symbol preview small >}} {{< material-symbol engineering small >}} {{< material-symbol volcano small >}} {{< material-symbol empty small >}} {{< material-symbol wall_art small >}} {{< material-symbol wallpaper_slideshow small >}}

### Tiny icons

These icons are rendered much smaller than the recommended size of 24px. Use with care.

{{< material-symbol preview tiny >}} {{< material-symbol engineering tiny >}} {{< material-symbol volcano tiny >}} {{< material-symbol empty tiny >}} {{< material-symbol wall_art tiny >}} {{< material-symbol wallpaper_slideshow tiny >}}

## CONFIGURATION

The partial and the shortcode wrap the inline SVG for the icons in a `<span>`. This tag may include a class attribute which is configured in the data folder. We can override the default in our project:

Create a folder `materialSymbol` and therein the file `params.yaml` (or .toml, .json) with the parameter `class`.
