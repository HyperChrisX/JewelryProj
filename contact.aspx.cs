using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            string toAddress = "salchrj@dunwoody.edu";
            
            string[] toArray = toAddress.Split(',');
            
            if (validateAddress(senderEmail.Text) == false)
            {
                emailForm.Visible = false;
                sentEmail.Visible = true;
                sentEmail.Text = "<p>The Sender's email isn't valid. Please fix"
                        + " by clicking your browser's back button and updating the "
                        + " information.";
            }
            else if (toAddress.Length == 0 || !checkAddresses(toArray))
            {
                emailForm.Visible = false;
                sentEmail.Visible = true;
                sentEmail.Text = "You have issues in your To addresses. Please fix"
                        + " by clicking your browser's back button and updating the "
                        + " information.";
            }

            else
            {
                MailAddress messageFrom = new MailAddress(
                    senderEmail.Text.ToLower().Trim()
                    , senderName.Text);
                string messageSubject = subject.Text;
                string messageBody = message.Text;
                MailMessage emailMessage = new MailMessage();
                emailMessage.From = messageFrom;
                foreach (string addy in toArray)
                {
                    MailAddress address = new MailAddress(addy);
                    emailMessage.To.Add(address);
                }
                //foreach (string addy in ccArray)
                //{
                //    MailAddress address = new MailAddress(addy);
                //    emailMessage.CC.Add(address);
                //}
                //foreach (string addy in bccArray)
                //{
                //    MailAddress address = new MailAddress(addy);
                //    emailMessage.Bcc.Add(address);
                //}

                emailMessage.Subject = messageSubject;
                emailMessage.Body = messageBody;

                SmtpClient mailClient = new SmtpClient();
                mailClient.UseDefaultCredentials = true;
                mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                try
                {
                    mailClient.Send(emailMessage);
                }
                catch (Exception ex)
                {
                    Message(ex.Message);
                }
                
                emailForm.Visible = false;
                sentEmail.Visible = true;

                sentEmail.Text = "<p>The following message was sent successfully </p><hr />"
                        + "<p><strong>From</strong>: "
                        + messageFrom.DisplayName + " &lt;"
                        + messageFrom.Address
                        + "&gt;</p>"
                        + "<p><strong>To</strong>: &lt;"
                        + toAddress
                        + "&gt;</p>"
                        + "<p><strong>Subject</strong>: "
                        + emailMessage.Subject
                        + "</p>"
                        + "<p><strong>Body</strong>: "
                        + emailMessage.Body
                        + "</p>";

            }
        }

    }
    public void Message(string strMsg)
    {
        string strScript = null;
        strScript = "<script>";
        strScript = strScript + "alert('" + strMsg + "');";
        strScript = strScript + "</script>";
        ClientScript.RegisterStartupScript(GetType(), "f", strScript);
    }

    protected Boolean validateAddress(string address)
    {
        Regex emailPattern = new
            Regex("^([\\w_\\d]{1,35})"
                + "((\\.?[+]?[\\w_\\d]{1,10})?){3}?"
                + "\\@[\\d\\w-_]{1,20}\\..{2,5}$");
        Match emailMatch = emailPattern.Match(address);
        if (emailMatch.Success)
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    protected Boolean checkAddresses(string[] address)
    {
        for (int i = 0; i < address.Length; i++)
        {
            address[i].TrimEnd(' ');
            if (!validateAddress(address[i]))
            {
                return false;
            }
        }
        return true;
    }


}
