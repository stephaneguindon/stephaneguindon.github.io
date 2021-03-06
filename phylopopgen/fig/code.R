worldmap <- ne_countries(scale = 'medium', type = 'map_units',
                           returnclass = 'sf')
asia <- worldmap[worldmap$continent == 'Asia',]
ggplot(data = asia) +
    geom_sf(aes(fill = pop_est/var(pop_est),alpha=0.3)) +  scale_fill_viridis_c(trans = "sqrt") +
    coord_sf(crs = "+proj=laea +lat_0=32 +lon_0=60 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs ")+ theme(legend.position = "none",axis.text.x = element_blank(),axis.text.y = element_blank());
