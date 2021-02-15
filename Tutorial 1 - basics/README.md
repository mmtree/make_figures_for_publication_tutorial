
# Tutorial 1 &ndash; basics

This tutorial chronicles the step-by-step construction of the template figure seen below. We start by generating data and subfigures in Matlab (or Python) then compose subfigures and add annotations in [Inkscape](https://inkscape.org/) and end with a single pdf (or .eps, .png, other prefered format ...) of the entire panel (a, b, c) which can be easily inserted into a latex document. 



<img src="figures/pngs_for_readme/demo_panel.png" width="800">



This tutorial covers the following...

1. How to standarize fonts and font sizes across figures and subfigures.

2. How to use colors from a Matlab color palette

3. How to compose a panel of individual figures in Inkscape.

4. How to add text and math latex annotations to a panel in Inkscape.

5. How to align and space all content in a panel.

6. How to save figure content as an appropriate file size.


This tutorial uses the following programs

1. [Matlab](https://www.mathworks.com/products/matlab.html) (or [Python](https://www.python.org/))

2. [Inkscape](https://inkscape.org/)

3. [Latex](https://www.latex-project.org/)


<br/>

## Step 1 &ndash; Create subfigures in Matlab

Run the script

    demo_make_figs.m
  
which creates subfigures 

    demo_fig1.pdf
    demo_fig2.pdf
    
stored in the folder Tutorial 1 - basics/figures.

<br/>

## Step 2 &ndash; Create figure panel in Inkscape

Inkscape tutorial is in the file
    
    demo_panel.svg
    
stored in the folder Tutorial 1 - basics/figures. This file must be opened using Inkscape and covers how to import .pdfs into Inkscape and create a figure panel.

<br/>

### Open Inkscape

<img src="figures/pngs_for_readme/open_inkscape.png" width="800">

<br/>

### Inkscape step 1 &ndash; import pdfs

<img src="figures/pngs_for_readme/step1_make_base_layer.png" width="800">

<br/>


### Inkscape step 2 &ndash; Make annotation layer

<img src="figures/pngs_for_readme/step2_make_annotation_layer.png" width="800">

<br/>

### Inkscape step 3 &ndash; Add arrows and shapes

<img src="figures/pngs_for_readme/step3_add_arrows.png" width="800">

<br/>

### Inkscape step 4 &ndash; Change colors

<img src="figures/pngs_for_readme/step4_change_colors.png" width="800">

<br/>

### Inkscape step 5 &ndash; Align everything

<img src="figures/pngs_for_readme/step5_align.png" width="800">

<br/>

### Inkscape step 6 &ndash; Create page around panel

<img src="figures/pngs_for_readme/step6_create_page.png" width="800">

