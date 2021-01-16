Imports ML.DataModeling.Framework.Helper
Imports ML.DataModeling.Framework.BusinessObjects
Imports ML.DataModeling.Framework.DataProvider
Imports ML.DataModeling.Framework.Utility
Partial Public Class SendMail
    Inherits System.Web.UI.Page
    Private strAppPath = System.Configuration.ConfigurationManager.AppSettings("DHApplicationURL")
    Private strMachineLearningWebSitePath = System.Configuration.ConfigurationManager.AppSettings("MachineLearningWebSiteURL")
    Private enumMailSentResponse As MailSentResponse
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intOperationType As Int16
        intOperationType = Request("intOperationType")
        Dim emailHelper As New MailHelper()
        Dim strMailTo As String
        Dim strMailCC As String = ""
        Dim strMailBCC As String = ""
        Dim strMailSubject As String = ""
        Dim strMailBody As String = ""
        Dim blnMailBodyAsHTML As Boolean = False
        Dim intUserIdx As Integer

        Dim objUser As New User()
        Dim objUserProvider As New UserProvider
        If (Request("intUserIdx") <> "") Then
            intUserIdx = Request("intUserIdx")
            objUser = objUserProvider.GetUserById(intUserIdx)
        End If
        

        strMailTo = Request("strMailTo")
        If (Request("strMailCC") <> "") Then
            strMailCC = Request("strMailCC")
        End If
        If (Request("strMailBCC") <> "") Then
            strMailBCC = Request("strMailBCC")
        End If
        If (Request("strMailSubject") <> "") Then
            strMailSubject = Request("strMailSubject")
        End If

        If (Request("blnMailBodyAsHTML") <> "") Then
            If (Request("blnMailBodyAsHTML") = "true") Then
                blnMailBodyAsHTML = True
            End If
        End If
        emailHelper.MailTo = strMailTo
        emailHelper.Cc = strMailCC
        emailHelper.Bcc = strMailBCC
        emailHelper.Subject = strMailSubject
        emailHelper.BodyFormatAsHTML = blnMailBodyAsHTML
        strMailBody = GetEmailHeader()
        Select Case intOperationType
            Case 1 ' for registered user
                strMailBody += GetRegisterUserBodyContent("Account Activation", objUser)
                strMailBody += GetEmailFooter()
                emailHelper.Body = strMailBody
                enumMailSentResponse = emailHelper.SendEmail()
            Case 2 'for forgot password
                strMailBody += GetForgotPasswordBodyContent("Password Recovery", objUser)
                strMailBody += GetEmailFooter()
                emailHelper.Body = strMailBody
                enumMailSentResponse = emailHelper.SendEmail()
            Case 3 'for change password
                strMailBody += GetChangedPasswordBodyContent("Password Change", objUser)
                strMailBody += GetEmailFooter()
                emailHelper.Body = strMailBody
                enumMailSentResponse = emailHelper.SendEmail()
            Case 4 'for feedback response
                Dim strAdminMailContent As String = ""
                Dim objToUser As New User()
                Dim strResponseContent As String = Request("strResponseContent")
                objToUser.FirstName = Request("strFeedbackFirstName")
                objToUser.LastName = Request("strFeedbackLastName")
                strMailBody += GetFeedbackResponseBodyContent("Feedback Response", objToUser, strResponseContent)
                strMailBody += GetEmailFooter()
                emailHelper.Body = strMailBody
                enumMailSentResponse = emailHelper.SendEmail()
                strAdminMailContent = GetFeedbackResponseBodyContentFromAdmin("Feedback Response", objUser, strResponseContent, objToUser)
                SendMailToAdmins(strAdminMailContent, "Feedback Response to " + objToUser.DisplayName)
            Case 5 'for feedback auto mail
                Dim strAdminMailContent As String = ""
                Dim objToUser As New User()
                Dim strResponseContent As String = Request("strResponseContent")
                objToUser.FirstName = Request("strFeedbackFirstName")
                objToUser.LastName = Request("strFeedbackLastName")
                strMailBody += GetFeedbackAutoMailContent("Feedback Confirmation", objToUser, strResponseContent)
                strMailBody += GetEmailFooter()
                emailHelper.Body = strMailBody
                enumMailSentResponse = emailHelper.SendEmail()
                strAdminMailContent = GetFeedbackBodyContentToAdmin("Feedback Confirmation", strResponseContent, objToUser)
                SendMailToAdmins(strAdminMailContent, "Feedback From " + objToUser.DisplayName)
            Case 6 'for feedback response from non admin
                Dim strAdminMailContent As String = ""
                Dim objFromUser As New User()
                Dim strResponseContent As String = Request("strResponseContent")
                objFromUser.FirstName = Request("strFeedbackFirstName")
                objFromUser.LastName = Request("strFeedbackLastName")
                strAdminMailContent = GetFeedbackResponseBodyContentToAdmin("Feedback Response From ", objUser, strResponseContent, objFromUser)
                SendMailToAdmins(strAdminMailContent, "Feedback Response from " + objFromUser.DisplayName)
        End Select

       
        If (enumMailSentResponse = MailSentResponse.Success) Then
            Response.Write("true")
        Else
            Response.Write("false")
        End If
    End Sub
    Private Function GetEmailHeader() As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td width='143' align='left' valign='middle'  height='70'>")
        strBuilder.Append("<a href='#' target='_blank'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/DataModeling-logo.gif' alt='' border='0'>")
        strBuilder.Append("</a>")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='457' align='right' valign='middle'>")
        strBuilder.Append("<a href='http://www.MachineLearning.com' target='_blank'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/MachineLearning-logo.gif' alt='Machine Learning, Inc.' border='0'>")
        strBuilder.Append("</a>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function

    Private Function GetEmailFooter() As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td style='border:1px solid #bdbdbd; border-top:none; padding:6px; background:#e2e2e2;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td width='64%' align='left' valign='top' style='font:normal 11px Segoe UI, Arial, Helvetica, sans-serif; line-height:17px; color:#444'>")
        strBuilder.Append("© " + Now.Year().ToString() + ", Machine Learning, Inc. All Rights Reserved")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='36%' align='right' valign='top' style='font:normal 11px Segoe UI, Arial, Helvetica, sans-serif; line-height:17px; color:#444'>")
        strBuilder.Append("<a href='" + strMachineLearningWebSitePath + "/Legal/Privacy.aspx' target='_blank'>Privacy</a>")
        strBuilder.Append(" | ")
        strBuilder.Append("<a href='" + strMachineLearningWebSitePath + "/Legal/Terms.aspx' target='_blank'>Terms of Use</a>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")

        Return strBuilder.ToString()

    End Function

    Private Function GetRegisterUserBodyContent(ByVal strHeading As String, ByVal objUser As User) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello ")
        strBuilder.Append(objUser.DisplayName + ",")
        strBuilder.Append("<br><br>")
        strBuilder.Append("We are pleased to inform you that your Machine Learning - Data Modling and Training account has been activated. ")
        strBuilder.Append("<br><br>")
        strBuilder.Append("Your login credentials are:")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top'>")
        strBuilder.Append("<table width='80%' border='0' cellspacing='0' cellpadding='2' style='border-collapse:collapse;'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td width='30%' align='left' valign='middle' style='background:#e9e9e9; border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append("User Name")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='70%' align='left' valign='middle' style='border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append(objUser.Email)
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='middle'  style='background:#e9e9e9; border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append("Password")
        strBuilder.Append("</td>")
        strBuilder.Append("<td align='left' valign='middle' style='border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append(objUser.Password)
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' height='200' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("<br>")
        strBuilder.Append("Please visit ")
        strBuilder.Append("<a href='" + strAppPath + "/codebase/default.aspx' target='_blank'>Machine Learning - Data Modling and Training</a> now.")
        strBuilder.Append("<br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='height:50px;'>&nbsp;</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function
    Private Function GetForgotPasswordBodyContent(ByVal strHeading As String, ByVal objUser As User) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello ")
        strBuilder.Append(objUser.DisplayName + ",")
        strBuilder.Append("<br><br>")
        strBuilder.Append("We are pleased to inform you that your password has been recovered.")
        strBuilder.Append("<br><br>")
        strBuilder.Append("Your login credentials are:")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top'>")
        strBuilder.Append("<table width='80%' border='0' cellspacing='0' cellpadding='2' style='border-collapse:collapse;'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td width='30%' align='left' valign='middle' style='background:#e9e9e9; border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append("User Name")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='70%' align='left' valign='middle' style='border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append(objUser.Email)
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td  width='30%' align='left' valign='middle'  style='background:#e9e9e9; border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append("Password")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='70%' align='left' valign='middle' style='border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append(objUser.Password)
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' height='200' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("<br>")
        strBuilder.Append("Please visit ")
        strBuilder.Append("<a href='" + strAppPath + "/codebase/default.aspx' target='_blank'>Machine Learning - Data Modling and Training</a> now.")
        strBuilder.Append("<br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='height:50px;'>&nbsp;</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function
    Private Function GetChangedPasswordBodyContent(ByVal strHeading As String, ByVal objUser As User) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello ")
        strBuilder.Append(objUser.DisplayName + ",")
        strBuilder.Append("<br><br>")
        strBuilder.Append("We are pleased to inform you that your password has been changed.")
        strBuilder.Append("<br><br>")
        strBuilder.Append("Your login credentials are:")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top'>")
        strBuilder.Append("<table width='80%' border='0' cellspacing='0' cellpadding='2' style='border-collapse:collapse;'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td width='30%' align='left' valign='middle' style='background:#e9e9e9; border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append("User Name")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='70%' align='left' valign='middle' style='border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append(objUser.Email)
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td  width='30%' align='left' valign='middle'  style='background:#e9e9e9; border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append("Password")
        strBuilder.Append("</td>")
        strBuilder.Append("<td width='70%' align='left' valign='middle' style='border:1px solid #b6b6b6; font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; '>")
        strBuilder.Append(objUser.Password)
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' height='200' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("<br><br>")
        strBuilder.Append("Please visit ")
        strBuilder.Append("<a href='" + strAppPath + "/codebase/default.aspx' target='_blank'>Machine Learning - Data Modling and Training</a> now.")
        strBuilder.Append("<br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='height:50px;'>&nbsp;</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function

    Private Function GetFeedbackResponseBodyContent(ByVal strHeading As String, ByVal objUser As User, ByVal strResponseText As String) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello ")
        strBuilder.Append(objUser.DisplayName + ",")
        strBuilder.Append("<br><br>")
        strBuilder.Append(strResponseText)
        strBuilder.Append("<br><br>")
        strBuilder.Append("Note: Please visit Feedback History section for more details.")
        strBuilder.Append("<br><br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("<br><br><br><br>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function
    Private Function GetFeedbackAutoMailContent(ByVal strHeading As String, ByVal objUser As User, ByVal strResponseText As String) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello ")
        strBuilder.Append(objUser.DisplayName + ",")
        strBuilder.Append("<br><br>")
        strBuilder.Append("Thank you for providing feedback on the Machine Learning - Data Modling and Training.  Your feedback is important to us and we will review your thoughts and respond back to you for any clarification.")
        strBuilder.Append("<br><br><br><br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("<br><br><br><br>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function

    Private Function GetFeedbackResponseBodyContentFromAdmin(ByVal strHeading As String, ByVal FromUser As User, ByVal strResponseText As String, ByVal objFeedbackUser As User) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello, ")
        strBuilder.Append("<br><br>")
        strBuilder.Append(FromUser.DisplayName + " has posted a new response on " + objFeedbackUser.DisplayName + "'s comments as shown below :")
        strBuilder.Append("<br><br>")
        strBuilder.Append(strResponseText)
        strBuilder.Append("<br><br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("<br><br><br><br>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function
    Private Function GetFeedbackResponseBodyContentToAdmin(ByVal strHeading As String, ByVal FromUser As User, ByVal strResponseText As String, ByVal objFeedbackUser As User) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello, ")
        strBuilder.Append("<br><br>")
        strBuilder.Append(FromUser.DisplayName + " has posted a new comments as shown below :")
        strBuilder.Append("<br><br>")
        strBuilder.Append(strResponseText)
        strBuilder.Append("<br><br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("<br><br><br><br>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function
    Private Function GetFeedbackBodyContentToAdmin(ByVal strHeading As String, ByVal strResponseText As String, ByVal objFeedbackUser As User) As String
        Dim strBuilder As New StringBuilder
        strBuilder.Append("<table width='600' border='0' cellspacing='0' cellpadding='0' align='center'>")
        strBuilder.Append("<tr>")
        strBuilder.Append(" <td align='left' valign='top'>")
        strBuilder.Append("<img src='" + strAppPath + "/themes/emailtemplate/images/ContentTop.gif' alt='' border='0'>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; border-bottom:none;'>")
        strBuilder.Append("<h1 style='font:bold 15px Segoe UI, Arial, Helvetica, sans-serif; border-bottom:1px solid #bdbdbd; background:#e5e4e4; margin:0; padding:0px 8px  6px  8px; color:#e37f1c'>")
        strBuilder.Append("&nbsp;" + strHeading)
        strBuilder.Append("</h1>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='border:1px solid #bdbdbd; border-top:none; padding:6px;'>")
        strBuilder.Append("<table width='100%' border='0' cellspacing='2' cellpadding='0'>")
        strBuilder.Append("<tr>")
        strBuilder.Append("<td align='left' valign='top' style='font:normal 13px Segoe UI, Arial, Helvetica, sans-serif; line-height:20px;'>")
        strBuilder.Append("Hello, ")
        strBuilder.Append("<br><br>")
        strBuilder.Append(objFeedbackUser.DisplayName + " has posted a new feedback as shown below :")
        strBuilder.Append("<br><br>")
        strBuilder.Append(strResponseText)
        strBuilder.Append("<br><br><br>")
        strBuilder.Append("- Machine Learning Machine Learning - Data Modling and Training team")
        strBuilder.Append("<br><br><br><br>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        strBuilder.Append("</td>")
        strBuilder.Append("</tr>")
        strBuilder.Append("</table>")
        Return strBuilder.ToString()
    End Function
    Private Function SendMailToAdmins(ByVal strContent As String, ByVal strSubject As String) As Boolean
        Dim emailHelper As New MailHelper()
        Dim strMailTo As String = ""
        Dim strMailBody As String = ""
        Dim objEmailCcUsers As List(Of User)
        Dim objUser As New User()
        Dim objUserProvider As New UserProvider
        objEmailCcUsers = objUserProvider.GetEmailCcUsers()
        For Each objUser In objEmailCcUsers
            strMailTo += objUser.Email + ","
        Next
        If (strMailTo.Trim().Length > 0) Then
            strMailTo = strMailTo.Substring(0, strMailTo.Trim().Length - 1)
        End If
        strMailBody = GetEmailHeader()
        strMailBody += strContent
        strMailBody += GetEmailFooter()
        emailHelper.MailTo = strMailTo
        emailHelper.Subject = strSubject
        emailHelper.Body = strMailBody
        enumMailSentResponse = emailHelper.SendEmail()
        If (enumMailSentResponse = MailSentResponse.Success) Then
            Return True
        Else
            Return False
        End If
    End Function
End Class