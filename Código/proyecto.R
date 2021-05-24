#Proyecto Bioestadística
#Instalación de librerías
library(readr)
library(ggplot2)
library(dplyr)
library(hrbrthemes)
library(viridis)

#Librerías de superviviencia
install.packages("survival")
install.packages("KMsurv")
install.packages("survMisc")
install.packages("survminer")
install.packages("flexsurv")
install.packages("actuar")
library(survival)
library(KMsurv)
library(survMisc)
library(survminer)
library(ggfortify)
library(flexsurv)
library(actuar)

#Lectura de datos
datos <-read_csv("Documents/BIOESTADÍSTICA/datos_bio_proyecto.csv")

#EDA
#% de cuántas empresas mueren en cada bimestre
pct_na<-as.data.frame(apply(is.na(datos), 2, mean))
names(pct_na)[1]<-"Porcentaje_NA"

#Crear variable de cenusura
datos$censura<-datos %>% case_when(is.na(te_1)~0,is.na(te_2)~0,is.na(te_3)~0,is.na(te_4)~0,
                                   is.na(te_5)~0,is.na(te_6)~0,is.na(te_7)~0, is.na(te_8)~0,
                                   is.na(te_9)~0,is.na(te_10)~0,is.na(te_11)~0,is.na(te_12)~0,
                                   is.na(te_13)~0, is.na(te_14)~0,is.na(te_15)~0,is.na(te_16)~0,
                                   is.na(te_17)~0,is.na(te_18)~0,is.na(te_19)~0, is.na(te_20)~0,
                                   is.na(te_21)~0,is.na(te_22)~0,is.na(te_23)~0,is.na(te_24)~0,
                                   is.na(te_25)~0,is.na(te_26)~0,is.na(te_27)~0,is.na(te_28)~0,
                                   is.na(te_29)~0,is.na(te_30)~0,is.na(te_31)~0,is.na(te_32)~0,
                                   is.na(te_33)~0,is.na(te_34)~0,is.na(te_35)~0,is.na(te_36)~0)
                                   