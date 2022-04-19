using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuctionProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonRegister_Click(object sender, EventArgs e)
        {
            edu.mountunion.silver.WSRegister ws;
            ws = new edu.mountunion.silver.WSRegister();

            int phoneNumber, zipCode, bidderID = 0, numRowsAffected;
            string firstName, lastName, email, password, street, city, state, userType;

            try
            {
                phoneNumber = Convert.ToInt32(textboxPhoneNumber.Text);
                zipCode = Convert.ToInt32(textboxZipCode.Text);

                try
                {
                    if (textboxFirstName.Text.Length > 0 && textboxLastName.Text.Length > 0 &&
                        textboxPhoneNumber.Text.Length > 0 && textboxEmail.Text.Length > 0 &&
                        textboxPassword.Text.Length > 0 && textboxStreet.Text.Length > 0 &&
                        textboxCity.Text.Length > 0 && textboxState.Text.Length > 0 &&
                        textboxZipCode.Text.Length > 0)
                    {
                        firstName = textboxFirstName.Text;
                        lastName = textboxLastName.Text;
                        email = textboxEmail.Text;
                        password = textboxPassword.Text;
                        street = textboxStreet.Text;
                        city = textboxCity.Text;
                        state = textboxState.Text;
                        userType = "user";
                        bidderID += 1;

                        numRowsAffected = ws.insertAccount(firstName, lastName, phoneNumber, email, password, street, city, state, zipCode, userType, bidderID);
                        if (numRowsAffected > 0)
                        {
                            labelStatus.Text = "Account registered successfully.";
                            textboxFirstName.Text = "";
                            textboxLastName.Text = "";
                            textboxEmail.Text = "";
                            textboxPhoneNumber.Text = "";
                            textboxEmail.Text = "";
                            textboxPassword.Text = "";
                            textboxStreet.Text = "";
                            textboxCity.Text = "";
                            textboxState.Text = "";
                            textboxZipCode.Text = "";
                        }
                        else
                        {
                            labelStatus.Text = "There is already an account with that email.";
                        }
                    }
                    else
                    {
                        labelStatus.Text = "Please fill out all boxes above to register an account.";
                    }
                }
                catch (FormatException ex)
                {
                    labelStatus.Text = "Please fill out all boxes above to register an account.";
                }
            }
            catch (Exception ex)
            {
                labelStatus.Text = "Please make sure your phone number and zip code is valid.";
            }

        }
    }
}