
# Tutorial 1 &ndash; basics

This tutorial chronicles the step-by-step construction of the template figure seen below. We start by generating data and subfigures in Matlab (or Python) then compose subfigures and add annotations in [Inkscape](https://inkscape.org/) and end with a single pdf (or .eps, .png, other prefered format ...) of the entire panel (a, b, c) which can be easily inserted into a latex document. 



<img src="figures/pngs_for_readme/demo_panel.png" width="700">



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

Inkscape has many features. The most important tools on the left are "Align and Distribute", "Fill and Stroke", and "Layers". The most important tools on the left are "Select", "Create rectangles and squares", "Create circles, ellipses, and arcs", "Draw Bezier curves and straight lines", and "Create and edit text object". The most important tabs at the top are "Object" and "Extensions". We will cover what each of these tools are used for below.

<img src="figures/pngs_for_readme/open_inkscape.png" width="900">

<br/>

### Inkscape step 1 &ndash; import pdfs

**Import images:** First we import the pdf subfigures generated using Matlab. Make sure the figures you are importing do not have too large of a file size. Working with large image files in Inkscape will make Inkscape very slow and even crash. If you have large image files, try making the files smaller before importing. One way to make files smaller is to plot few points when generating the figure in Matlab.

    File -> Import -> demo_fig1.pdf

**Add images to base layer:** We can add all images to the first layer and then create an additional layer above the base layer for which to add annotations.
    
    right click demo_fig1.pdf, Move to layer ->Layer 1
    
**Crop image:** If the pdf needs to be cropped we can do this by drawing a box around the part of the image that we want to keep, selecting both objects, and then clipping the set.

    Draw a box on top of image
    Select both box and image
    Object-> Clip -> Set

<img src="figures/pngs_for_readme/step1_make_base_layer.png" width="800">

<br/>


### Inkscape step 2 &ndash; Make annotation layer

All text and other annotations should be added to a layer above the base layer so that the annotations will always appear on top of the images.

**Create new layer:** First we must create a new layer by clicking on the layers tab and adding a layer above the current layer, naming it "Layer 2"
    
    Layer -> Add Layer
    
**Add annotations to new layer:** We can add anything we want to Layer 2 by right clicking on an object and changing the layer it is in

    Right click on annotation -> Move to Layer.. -> Layer 2
    

**Latex equation annotations:** We can add Latex equation objects by going to 

    Extensions -> Render -> Mathematics -> Latex(pdf)
    
This blog post [here](http://blog.jamiejquinn.com/rendering-latex-in-inkscape) covers adding latex equations in more detail. 

There are several other options for adding latex objects to Inkscape. 

[TexText - Re-editable LaTeX graphics for Inkscape](https://textext.github.io/textext/index.html) is a Python extension for Inkscape that allows you to add and re-edit LaTeX generated SVG elements to your drawing. 

[LaTeXText: Render LaTeX in Inkscape](https://inkscape.org/~seebk/%E2%98%85latextext-render-latex-in-inkscape) is a different Inkscape extesion that searches all text elements in a document and renders them with PdfLatex.





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

