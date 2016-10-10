function FuncMail {
    #param($strTo, $strCc, $strFrom, $strSubject, $strBody, $smtpServer)
    param($To, $From, $Subject, $Body, $smtpServer)
    $msg = new-object Net.Mail.MailMessage
    $smtp = new-object Net.Mail.SmtpClient($smtpServer)
    $msg.From = $From
    $msg.To.Add($To)
    $msg.Subject = $Subject
    $msg.IsBodyHtml = 1
    $msg.Body = $Body
    $smtp.Send($msg)
}

        FuncMail -To "XXX@XXX.COM.BR, YYYY@YYYY.COM.BR" -From "zzz@zzz.com.br" -Subject "[SHUTDOWN] - Servidor XXXXXXX está sendo desligado." -Body "Alerta automatico de Shutdown do servidor XXXXXX" -smtpServer "XXX.XXX.XXX.XXX"

