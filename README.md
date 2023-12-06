# hugo-mod-material-symbols
This module provides selected SVGs from Google’s material symbols and templates to include them into a Hugo project.

This is **not a general-purpose Hugo module** and there won’t be any releases.

You may find the module useful if you clone it and adapt it to your needs. In case you want to select other symbol sets you also need to clone Google’s original repo material-design-icons (it’s huge!). 

All the SVGs **slightly deviate from their original release**. Their shape is the same, but all the `height` and `width` attributes for the `svg` tag are removed and replaced by `viewBox` attributes if necessary.
