
set.seed(123)  
data <- data.frame(
  Age = sample(10:80, 200, replace = TRUE),
  Sexe = sample(c("Homme", "Femme"), 200, replace = TRUE)
)

data_homme <- data[data$Sexe == "Homme", ]
data_femme <- data[data$Sexe == "Femme", ]


hist(data_homme$Age, breaks = seq(10, 80, by = 5), col = rgb(0, 0, 1, 0.5), 
     xlab = "Âge", ylab = "Nombre de personnes", main = "Répartition par âge et sexe",
     xlim = c(10, 80), ylim = c(0, 20), border = "blue")

hist(data_femme$Age, breaks = seq(10, 80, by = 5), col = rgb(1, 0, 1, 0.5), 
     add = TRUE, border = "pink")


legend("topright", legend = c("Homme", "Femme"), fill = c(rgb(0, 0, 1, 0.5), rgb(1, 0, 1, 0.5)),
       border = c("blue", "pink"))


png("demographic_distribution.png")
hist(data_homme$Age, breaks = seq(10, 80, by = 5), col = rgb(0, 0, 1, 0.5), 
     xlab = "Âge", ylab = "Nombre de personnes", main = "Répartition par âge et sexe",
     xlim = c(10, 80), ylim = c(0, 20), border = "blue")
hist(data_femme$Age, breaks = seq(10, 80, by = 5), col = rgb(1, 0, 1, 0.5), 
     add = TRUE, border = "pink")
legend("topright", legend = c("Homme", "Femme"), fill = c(rgb(0, 0, 1, 0.5), rgb(1, 0, 1, 0.5)),
       border = c("blue", "pink"))
dev.off()

