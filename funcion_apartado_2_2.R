
# En base a los datos recolectados de la tabla en el apartado 1.2, creamos un bucle sobre los duplicados.
frec_forma_basica <- c()
frec_norm_forma_basica <- c()
for (i in 1:length(duplicados)) {
  frec_forma_basica <- c(frec_forma_basica, sum(tabla$Frecuencia[tolower(tabla$Forma) == duplicados[i]] # Aquí se crea un vector con las frecuencias de cada forma duplicada
  frec_norm_forma_basica <- c(frec_norm_forma_basica(sum(tabla$Frec.norm[tolower(tabla$Forma) == duplicados[i]]) # Aquí se crea un vector con las frecuencias normalizadas de cada forma duplicada
}


cat("Formas básicas con duplicados no exactos (Frecuencia): ", sum(frec_forma_basica))

# Mostrar primeros 5 ejemplos
cat("\nPrimeros 5 ejemplos:\n")
for (i in 1:5) {
  forma <- names(duplicados)[i]
  variantes <- unique(tabla$Forma[tolower(tabla$Forma) == forma])
  frec <- frec_forma_basica[i]
  frec_norm <- frec_norm_forma_basica[i]
  cat(i, " '", forma, "' con las varientes: ", paste(variantes, collapse = ", "), "Frecuencia: ", frec, "Frecuencia Normalizada", frec_norm "\n", sep = "")
}