
# Libraries required
library(shiny)
library(shinyjs)
library(shinythemes)
library(shinydashboard)
suppressPackageStartupMessages(library(googleVis)) # for plot-1, plot-2



ui <- tagList(
        
        dashboardPage(
                
                skin = "purple",
                
                dashboardHeader(
                        
                        title = "OAIES"
                        
                ),
                
                
                
                
                dashboardSidebar(
                        
                        sidebarMenu(
                                
                                menuItem("Inicio", tabName = "item1", icon = icon("")),
                                menuItem("Acceso Abierto", tabName = "item2", icon = icon("unlock")),
                                menuItem("OAI-PMH", tabName = "item3", icon = icon("wrench")),
                                menuItem("Proveedores OAI-PMH", tabName = "item4", icon = icon("database")),
                                menuItem("Proveedores Mundiales", tabName = "item5", icon = icon("database")),
                                menuItem("Proveedores Españoles", tabName = "item6", icon = icon("table"))
                                
                        )
                        
                ),
                
                
                dashboardBody(
                        
                        
                        fluidRow(
                                
                                column(10),
                                
                                column(
                                        
                                        2,
                                        tags$img(
                                                
                                                height = 60,
                                                width = 80,
                                                src = "oai.jpg"
                                                
                                        )
                                        
                                )
                                
                        ),
                        
                        br(),
                        
                        tabItems(
                                
                                tabItem(
                                        
                                        tabName = "item1",
                                        fluidRow(
                                                
                                                column(1),
                                                column(
                                                        
                                                        11,
                                                        h5("Esta aplicación recolecta las direcciones web de más de 1100 proveedores españoles de datos y/o servicios que utilizan el protocolo de comunicación OAI-PMH (Open Access Initiative - Protocol for Metadata Harvesting)."), 
                                                        h5("Para más información dirigasé a:"), 
                                                        h5(tags$a(href = as.character("http://rpubs.com/scontador/OAIES"), target = "_blank", as.character("Presentación"))),
                                                        h5(tags$a(href = as.character("https://github.com/scontador"), target = "_blank", as.character("GitHub")))
                                                )
                                                
                                        )
                                        
                                ),
                                
                                tabItem(
                                        
                                        tabName = "item2",
                                        fluidRow(
                                                
                                                column(1),
                                                column(
                                                        
                                                        11,
                                                        h4("¿Que es el Acceso Abierto?"), 
                                                        h5("Manera libre y gratuita de acceder a la literatura científica."), 
                                                        br(),
                                                        h4("¿Donde encontrar la literatura científica?"), 
                                                        h5("En los Repositorios"),
                                                        br(),
                                                        h4("¿Que son los Repositorios?"),
                                                        h5("Sitios centralizados donde se almacena y mantiene la información digitalizada."),
                                                        h5("La información se distribuye a través de una red informática que se comunica con diferentes protocolos de interoperatibilidad."),
                                                        h5("Uno de los principales protocolos es OAI-PMH.")

                                                )
                                                
                                        )
                                        
                                ),
                                
                                tabItem(
                                        
                                        tabName = "item3",
                                        fluidRow(
                                                
                                                column(1),
                                                column(
                                                        
                                                        11,
                                                        h4("OAI-PMH: Open Access Initiative - Protocol for Metadata Harvesting"), 
                                                        h5("Protocolo de comunicación de metadatos en formato Dublin Core."), 
                                                        h5("Utiliza multiples proveedores de datos (PD) que se comunican con múltiples proveedores de servicios (PS)."),
                                                        h5("PD almacenan y mantienen los repositorios."),
                                                        h5("PS buscan los PD y los usan como base para la creación de servicios de valor añadido."),
                                                        h5("PS hace una petición de metadatos al PD."),
                                                        h5("En respuesta, PD envía un conjunto de registros en formato XML.")
                                                        
                                                )
                                                
                                        )
                                        
                                ),
                                
                                tabItem(
                                        
                                        tabName = "item4",
                                        fluidRow(
                                                
                                                column(1),
                                                column(
                                                        
                                                        11,
                                                        h4("Proveedores de Datos OAI-PMH"), 
                                                        h5("Existen miles de proveedores de datos OAI-PMH."), 
                                                        h6(tags$a(href = as.character("http://eprints.ucm.es"), target = "_blank", as.character("E-Prints Complutense"))),
                                                        h6(tags$a(href = as.character("http://oa.upm.es"), target = "_blank", as.character("Archivo Digital UPM"))),
                                                        h6(tags$a(href = as.character("http://dspace.mit.edu"), target = "_blank", as.character("Dspace at MIT"))),
                                                        h6(tags$a(href = as.character("http://library.harvard.edu/lts"), target = "_blank", as.character("Harvard University Library Virtual Collections"))),
                                                        br(),
                                                        h4("Proveedores de Servicios OAI-PMH"), 
                                                        h5("Existen cientos de proveedores de servicios OAI-PMH."), 
                                                        h6(tags$a(href = as.character("https://www.openarchives.org"), target = "_blank", as.character("OAI (Open Archive Initiative)")), "Más de 3000 repositorios."),
                                                        h6(tags$a(href = as.character("http://opendoar.org"), target = "_blank", as.character("OpenDOAR (Directory of Open Access Repositories)")), "Más de 2600 repositorios."),
                                                        h6(tags$a(href = as.character("http://roar.eprints.org"), target = "_blank", as.character("ROAR (Registry of Open Access Repositories)")), "Mas de 4000 repositorios."),
                                                        h6(tags$a(href = as.character("https://doaj.org"), target = "_blank", as.character("DOAJ (Drectory of Open Access Journals)")), "Más de 11000 revistas."),
                                                        h6(tags$a(href = as.character("https://dialnet.unirioja.es"), target = "_blank", as.character("DIALNET (Universidad de la Rioja)")), "Mas de 70 repositorios.")
                                                        
                                                )
                                                
                                        )
                                        
                                ),
                                
                                tabItem(
                                        
                                        tabName = "item5",
                                        fluidRow(
                                                
                                                column(1),
                                                column(
                                                        
                                                        11,
                                                        h5("Proveedores OAI-PMH en más de 80 paises.")
                                                        
                                                )
                                                
                                        ),
                                        
                                        fluidRow(
                                                
                                                column(1),
                                                column(
                                                        
                                                        11,
                                                        htmlOutput("plot")
                                                        
                                                )
                                                
                                        )
                                        
                                ),
                                
                                tabItem(
                                        
                                        tabName = "item6",
                                        wellPanel(
                                                
                                                fluidRow(
                                                        
                                                        column(1),
                                                        column(
                                                                11,
                                                                checkboxGroupInput(
                                                                        
                                                                        inputId = "show",
                                                                        label = "Mostrar en Tabla",
                                                                        choices = c("nombre", "url", "url_oai", "tipo", "divulgador"),
                                                                        selected = c("nombre", "url", "url_oai", "tipo", "divulgador"),
                                                                        inline = TRUE
                                                                        
                                                                )
                                                                
                                                        )
                                                        
                                                )
                                                
                                        ),
                                        
                                        fluidRow(
                                                
                                                column(
                                                        12,
                                                        dataTableOutput("table")
                                                        
                                                )
                                                
                                        )
                                        
                                )
                                
                        )
                        
                )
                
        ),
        
        tags$footer(
                
                h6("Application made by Sergio Contador scontador@ucm.es"),
                italic = TRUE, 
                bold = TRUE,
                style = "text-align:center; align: center; padding: 0px; margin: 0px;"
                
        )
        
)
        
        
        
        