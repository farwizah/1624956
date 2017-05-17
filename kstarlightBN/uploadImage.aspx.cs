using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace kstarlightBN
{
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string prodId = Request.QueryString["Id"];
            //get the extension of our image file
            string extension = (System.IO.Path.GetExtension(FileUpload1.FileName).ToLower());
            //check the extension is valid
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //load the image in memory so we can determine it's dimensions
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;
                //save the image data
                db_1624956_co5027_1624956_dbEntities db = new db_1624956_co5027_1624956_dbEntities();
                Photo imageData = new Photo();
                imageData.PhotoAlternate = AlternateText.Text;
                imageData.PhotoWidth = width;
                imageData.PhotoHeight = height;
                imageData.PhotoExtension = extension;
                db.Photos.Add(imageData);
                db.SaveChanges();
                string filename = imageData.Photo_ID.ToString() + extension;

                //save the image file (we could have alternatively saved the posted file,
                //but this would save any modifications we may have made to the image)
                img.Save(Server.MapPath("~/images/" + filename));
                //to inform the user
                //litResult.Text = "Your file was uploaded as " + filename + " in the images folder";
            }
        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
    }
}