using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace WebApplication2
{
    public partial class PayPalExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchaseExamQuestions_Click(object sender, EventArgs e)
        {
            decimal postagePackingCost = 3.95m;
            decimal examPaperPrice = 10.00m;
            int quantityOfExamPapers = int.Parse(ddlExamQuantity.SelectedValue);
            decimal subtotal = (quantityOfExamPapers * examPaperPrice);
            decimal total = subtotal + postagePackingCost;

            // Authenticate with PayPal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            //Get APIContext Object
            var apiContext = new APIContext(accessToken);

            var examPaperItem = new Item();
            examPaperItem.name = "Past Exam Paper";
            examPaperItem.currency = "GBP";
            examPaperItem.price = examPaperPrice.ToString();
            examPaperItem.sku = "PEPCO5027m15"; //sku is stock keeping unit - e.g. manufacturer code
            examPaperItem.quantity = quantityOfExamPapers.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackingCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "GBP";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of Past Exam papers";
            transaction.invoice_number = Guid.NewGuid().ToString(); //this should ideally be the id of a record storing the order
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { examPaperItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "~/Cancel.aspx";
            redirectUrls.return_url = "~/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //found the appropriate link, send the user there
                    Response.Redirect(link.href);
                }
            }
        }
    }
}