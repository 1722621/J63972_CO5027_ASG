using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace WebApplication2
{
    public partial class CompletePurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmPurchase_Click(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                //create a payment object with the paymentId from session
                var payment = new Payment() { id = paymentId };

                //retrieve the payerId from the querystring and use it to create a new payment execution object
                var payerId = Request.QueryString["PayerID"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerId };

                //execute the payment
                var executedPayment = payment.Execute(apiContext, paymentExecution);

                //inform the user
                litInformation.Text = "<p>Your order has been completed</p>";
                btnConfirmPurchase.Visible = false;
            }
        }
    }
}