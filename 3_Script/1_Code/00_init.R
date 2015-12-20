dateReport <- format(Sys.time(), "%Y%m%d%H")

suppressMessages({
  library(dplyr)
  library(tidyr)
  library(magrittr)
  library(lubridate)
  library(logging)
  library(futile.logger)
})

reportName <- paste0("IDInvoiceCheck")
warningLog <- paste0("IDInvoiceCheck", "warning")
flog.appender(appender.tee(file.path("3_Script/2_Log",
                                      paste0("ID_InvoiceChecking",dateReport,".csv"))),
              name = reportName)

layout <- layout.format('[~l]|[~t]|[~f]|~m')
flog.layout(layout, name=reportName)

