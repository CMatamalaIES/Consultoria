# Valores que se usar√°n como "par√°metros" (variables) del reporte
regiones <- c("Tarapac·", "Antofagasta", "Atacama", "Coquimbo", "O'Higgins", 
              "ValparaÌso", "Maule", "BiobÌo", "AraucanÌa", "Lagos", "AysÈn", 
              "Magallanes", "Metropolitana", "RÌos", "Arica", "—uble")

# Definir funci√≥n para generaci√≥n de reportes
for (i in regiones){
  rmarkdown::render("ReportePorRegion.Rmd",
                  params = list(reg = i),
                  output_file = paste0("Reportes/Reporte_", i, "_", format(Sys.Date(), "%d-%m-%Y"))
                  )
}


