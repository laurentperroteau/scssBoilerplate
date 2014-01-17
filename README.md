Simple SCSS-Compass Boilerplate
=================================

> Included sprite (retina) and font size REM ready-to-use .

<!--[French Version](https://laurentperroteau.com)-->

## The idea

A basic structure, solid, minimalist (bit verbose) and cross-browser (IE7 +) ; using essential mixins for a "classic" or "responsive/mobile-first" development.

_To differentiate those mixins from Compass, naming in CamelCase ._


## Sprites

```css
.elem { @include sprite(nameIcon); @extend %icon } // return a normal and retina version
```
__Require__ : 2 images with the same name (in folders `/icon` and `/icon2x`) and uncomment import of sprite.scss.

__Caution__ : 

- The size of image "retina" must be exactly twice.
- Never call within "media-queries".
- Incompatible with IE7 because pseudo-selectors but structure easily modified if necessary. 


## Typographie

2 mixins (for font-size and line-height) return in pixel et REM.

```css
@include fontSize(15 17); // the second argument call the mixin "lineHeight"
```

> For "font-face" and "font web", easily create your own mixins ! Example for a "Open Sans Google Font", type "italic":

```css
@mixin openItalic($param: null) {
    $fontFamily: 'Open Sans', sans-serif;
    $fontStyle: italic;
    $fontWeight: 600;
    @include constructFontMixin($fontFamily, $param, $fontStyle, $fontWeight);
}
```

Use :

```css
@include openItalic(15 17); // arguments retunr sizes of font
@include arial(bold 13 14);  // another example for "web font" in bold
```

> Why not create once mixin ? Mainly to minimize arguments but also because we should not use more than 2 font-face for consistent design. 


## Other examples of mixins

* __Position__ : 2 mixins to cancel padding/margin, 1 mixin to align vertically and 4 mixins for the property "position".

```css
@include absolute(auto 5 10%); // return an "absolute" absolute with top: 5px and right: 10%
@include clAbsolute(top right);  // cancel previous styles
```

* __Shape__ : 3 mixins to create geometric shapes (cube, circle and triangle).

```css
@include triangle(20 20 down $orange); // a 20px witdh triangle oriented downward 
```

* __Gradient__ : 1 mixin to create a "linear-gradient" cross-browser (IE7+).

```css
@include linearGradient(#666 #ccc); 
```

_For all dimensions, we can pass the number without the unit if we want pixeles or within unit if `%`, `em` or others._

## Folders

No OOCSS but a necessity of separating code for maintenance: 3 folders whose names should indicate without further explanation that they contain /global, /section and /page.

```
|
|____/css  => where are compiled CSS
|____/img
|    |____/icon => normal icon
|    |____/icon2x => retina icon
|
|____/scss
     |____/base
     |    |---- base.scss => variables
     |    |____/mixin => mixins files
     |
     |____/global
     |____/section
     |____/page
     |
     |---- projectName.scss
     |---- config.rb
     |---- INSTALL.html => how install SASS in 5 min (in french)
```
