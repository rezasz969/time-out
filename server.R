# library(shiny)
# library(shinydashboard)
# library(dplyr)
# library(DT)

# load("C:/Users/user/Desktop/melal test/df.Rdata")

server <- function(input, output) {
  observeEvent(input$timeOut, { 
    print(paste0("Session (", session$token, ") timed out at: ", Sys.time()))
    showModal(modalDialog(
      title = "Timeout",
      paste("Session timeout due to", input$timeOut, "inactivity -", Sys.time()),
      footer = NULL
    ))
    session$close()
  })
 # df <- reactive({df$amount <- round(df$amount, digits = 0)
 #  df$balance <- round(df$balance, digits = 0)
 #
 #  df$credit_debit <-  sample(c("Cr", "Dr"), dim(df)[1], replace = T)
 #  df$device <-  sample(c("POS", "ATM", "PAD", "INT", "MOB", "PIN", "VRU", "IKT"), dim(df)[1], replace = T)
 #  df$day_type <- sample(c("N", "T", "W", "B"), dim(df)[1], replace = T)
 #  df$time_type <- sample(c("D", "N", "M"), dim(df)[1], replace = T)
 #  df$txn_code <- sample(c("00", "01", "40", "46", "47"), dim(df)[1], replace = T)
 #  df$date <- sample(seq(as.POSIXct('2021/01/01 00:00:00'), as.POSIXct('2022/01/01 00:00:'), by=1), dim(df)[1])
 #  df$amount <- round(runif(dim(df)[1], 100000, 100000000), digits = 0)
 #  df$balance <- round(runif(dim(df)[1], 100000, 1000000), digits = 0)
 #
 #  df <- df %>% dplyr::select("card", "date","amount", "balance", "dist", "credit_debit", "device",
 #                             "day_type", "time_type", "txn_code")
 #  colnames(df) <- c("CARD", "DATE_TR","AMOUNT", "BALNCE", "DIST", "CREDIT_DEBIT", "DEVICE",
 #                    "DAY_TYPE", "TIME_TYPE", "TXN_CODE")
 #  return(df)})

 # output$tbl <- renderDT({
 #   DT::datatable(df)
 #   })
  }
