#hexSticker readme: https://cran.r-project.org/web/packages/hexSticker/hexSticker.pdf

#font source: #source: https://fonts.google.com/?query=sans

#globe colour palette: 
#$primary-color: #852E57;
#$primary-shade-1: #89CAD3;
#$primary-shade-2: #D56161;
#$primary-shade-3: #C7A274;
#$primary-shade-4: #CCCCCC;

#load packages
#install.packages("pacman")
pacman::p_load(hexSticker, here, ggplot2, magick, showtext)

#add font
font_add_google("Open Sans")

#read in image
#img <- image_read("")

#temporary empty img vector (function doesn't work without an image)
img <- ggplot() + theme_void()

#create and save hex sticker
s <- sticker(img, 
        package = "startr", 
        p_size = 13, #font size
        p_family = "Open Sans", 
        p_fontface = "bold",
        p_color = "black",
        p_x = 1, #font position
        p_y = 1, #font position
        s_x = 1, 
        s_y = .75, 
        s_width = 1.3,
        s_height = .9,
        h_fill = "#D56161",
        h_size = 1, #border thickness
        h_color = "#852E57",
        spotlight = FALSE,
        white_around_sticker = FALSE,
        filename = "hex/startr-hex.png")

#to overwrite with better sizing specs
#ggsave("hex/startr-hex.png", s, width = 8, height = 8)
                   
