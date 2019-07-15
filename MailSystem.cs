using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Text;
using System.Net.Mail;

namespace WebApplication1
{
    public class MailSystem
    {
        public static void SendMail(Exception ex)
        {
            

            var fromAddress = new MailAddress("vamc.ganti@gmail.com", "vamsi");
            var toAddress = new MailAddress("bollasatishchowdary@gmail.com", "satish bolla");
            const string fromPassword = "Amma@4453";
            const string subject = "test";
            const string body = "Hey now!!";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }
    }
}