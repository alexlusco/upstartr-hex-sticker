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
pacman::p_load(hexSticker, ggplot2, magick, rsvg, showtext)

#add font
font_add_google("Open Sans")

#read in image
img <- image_read("img/plug.png")

#temporary empty img vector (function doesn't work without an image)
#img <- ggplot() + theme_void()

#create and save hex sticker
s <- sticker(img, 
        package = "upstartr", 
        p_size = 7, #font size
        p_family = "Open Sans", 
        p_fontface = "bold",
        p_color = "white",
        #p_x = 1, #font position
        #p_y = 1, #font position
        s_x = 1, 
        s_y = .75, 
        s_width = 1.3,
        s_height = .9,
        h_fill = "#DA161F",
        h_size = 0, #border thickness
        #h_color = "#DA161F",
        spotlight = FALSE,
        white_around_sticker = FALSE,
        filename = "hex/upstartr-hex.png")
s

#to overwrite with different sizing specs
#ggsave("hex/upstartr-hex.png", s, width = 8, height = 8)
                   
