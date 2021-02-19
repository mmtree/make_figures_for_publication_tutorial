# Tutorial 2 &ndash; colors (advanced)

This tutorial chronicles how to find, create, and use custom, professional color palettes in Matlab or Python figures instead of using the limited selection of color palettes offered by Matlab and Python. Taking palettes from a color palette website, we set our Matlab or Python colors to be these palettes.

<img src=figures/pngs_for_readme/colors.png width="500">

These plots can be generated in Matlab by running the script

    demo_make_colors.m
    
These plots can be generated in Python by running the script

    demo_make_colors.ipynb

<br/>

## Step 1 &ndash; find a website that generates palettes

[Coolors](https://coolors.co/) is great because it lets you export hex color codes. It also lets you view palettes through different colorblind filters.  Other color palette generating websites include [COLOURLovers](https://www.colourlovers.com/palettes), [Colordot](https://color.hailpixel.com/) and [Cohesive Colors](https://javier.xyz/cohesive-colors/).

<img src=figures/pngs_for_readme/Screenshot_coolors_website.png width="600">


<br/>

## Step 2 &ndash; Generate a color palette and copy the hex color codes

Once you have chosen a palette, select Export -> Code ->  Array. Copy the hex array and paste into Matlab as a string array.

<img src=figures/pngs_for_readme/gradient_array_export.png width="500">

<br/>

## Step 3 &ndash; Paste hex color codes into Matlab or Python

    hex_color_array =["432371","4C2A72","553172","5E3873","683F73","714674","7A4D74","835475","8C5B75","956276","9F6976","A86F77","B17677","BA7D78","C38478","CC8B79","D59279","DF997A","E8A07A","F1A77B","FAAE7B"];

<br/>

## Step 4 &ndash; convert hex array to a usable color format for Matlab or Python plots

### Matlab directions

#### Use Matlab package [hex2rgb](https://www.mathworks.com/matlabcentral/fileexchange/46289-rgb2hex-and-hex2rgb) to convert hex array to an RGB array
  
    hex_color_array = reshape(hex_color_array,[],1);  % reshape to Nx1 color array
    hex_color_array = convertStringsToChars(hex_color_array);  % convert string array to character array
    rgb_color_array = hex2rgb(hex_color_array);

<br/>

#### use RGB color array for colormap or color palette

    s = surf(X,Y,Z);
    colormap(rgb_color_array); 
    
<img src=figures/pngs_for_readme/color_fig2.png width="500">

    figure(); hold on;
    plot([0,1],[0,1],'linewidth',5,'color',rgb_color_array(1,:));
    plot([0,1],[0,2],'linewidth',5,'color',rgb_color_array(2,:));
    plot([0,1],[0,3],'linewidth',5,'color',rgb_color_array(3,:));
    plot([0,1],[0,4],'linewidth',5,'color',rgb_color_array(4,:));
    
<img src=figures/pngs_for_readme/color_fig1.png width="500">

<br/>

### Python directions

#### Set color palettes
Individual hex colors can be specified in matplotlib plots. However, we must tweek the hex format first adding a '#' symbol before each hex string.

    for i in range(len(hex_color_array)):
        hex_color_array[i] = '#'+hex_color_array[i]
    
    
#### Set colormaps


