using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;

public class ImageResize
{
    enum Dimensions
    {
        Width,
        Height
    }

    enum AnchorPosition
    {
        Top,
        Center,
        Bottom,
        Left,
        Right
    }

    public string  dowork1(string SrcPhoto, string TrgPhoto,string sss2)
    {
        
        Image imgPhoto1 = Image.FromFile(SrcPhoto);
                Image imgPhoto = null;

       

        if (sss2 == "1")
        {   // strech by % like 30%
            imgPhoto = ScaleByPercent(imgPhoto1, 30);
        }


        if (sss2 == "2")
        {
            //imgPhoto = ConstrainProportions(imgPhoto1, 130, Dimensions.Width);
            imgPhoto = ConstrainProportions(imgPhoto1, 170, Dimensions.Width);
        }
        if (sss2 == "21")
        {
            imgPhoto = ConstrainProportions(imgPhoto1, 700, Dimensions.Width);
        }
        if (sss2 == "20")
        {
            imgPhoto = ConstrainProportions(imgPhoto1, 400, Dimensions.Width);
        } 
        if (sss2 == "22")
        {
            imgPhoto = ConstrainProportions(imgPhoto1, 130, Dimensions.Width);

        }

        if (sss2 == "3")
        {
            //imgPhoto = ConstrainProportions(imgPhoto1, 130, Dimensions.Height);
            imgPhoto = ConstrainProportions(imgPhoto1, 170, Dimensions.Height);
        }
        if (sss2 == "31")
        {
            imgPhoto = ConstrainProportions(imgPhoto1, 600, Dimensions.Height);
        }
        if (sss2 == "32")
        {
            imgPhoto = ConstrainProportions(imgPhoto1, 130, Dimensions.Height);
        }

       


        if (sss2 == "4")
        {
            imgPhoto = FixedSize(imgPhoto1, 100, 150);
        }


       
        
        if (sss2 == "51")
        {
            imgPhoto = Crop(imgPhoto1, 50, 50, AnchorPosition.Center);
        }
  
        if (sss2 == "52")
        {
            imgPhoto = Crop(imgPhoto1, 50, 50, AnchorPosition.Top );
        }
        if (sss2 == "53")
        {
            imgPhoto = Crop(imgPhoto1, 50, 50, AnchorPosition.Bottom );
        }
        if (sss2 == "54")
        {
            imgPhoto = Crop(imgPhoto1, 50, 50, AnchorPosition.Left );
        }
        if (sss2 == "55")
        {
            imgPhoto = Crop(imgPhoto1, 50, 50, AnchorPosition.Right );
        }
      

        if (imgPhoto != null)
        {
            
            imgPhoto.Save(TrgPhoto, ImageFormat.Jpeg);
            imgPhoto.Dispose();

            return ("Y");
        }
        else
        {
            return ("N");
        }

      

    }
    static Image ScaleByPercent(Image imgPhoto, int Percent)
    {
        float nPercent = ((float)Percent / 100);

        int sourceWidth = imgPhoto.Width;
        int sourceHeight = imgPhoto.Height;
        int sourceX = 0;
        int sourceY = 0;

        int destX = 0;
        int destY = 0;
        int destWidth = (int)(sourceWidth * nPercent);
        int destHeight = (int)(sourceHeight * nPercent);

        Bitmap bmPhoto = new Bitmap(destWidth, destHeight, PixelFormat.Format24bppRgb);
        bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

        Graphics grPhoto = Graphics.FromImage(bmPhoto);
        grPhoto.InterpolationMode = InterpolationMode.HighQualityBicubic;

        grPhoto.DrawImage(imgPhoto,
            new Rectangle(destX, destY, destWidth, destHeight),
            new Rectangle(sourceX, sourceY, sourceWidth, sourceHeight),
            GraphicsUnit.Pixel);

        grPhoto.Dispose();
        return bmPhoto;
    }
    static Image ConstrainProportions(Image imgPhoto, int Size, Dimensions Dimension)
    {
        int sourceWidth = imgPhoto.Width;
        int sourceHeight = imgPhoto.Height;
        int sourceX = 0;
        int sourceY = 0;
        int destX = 0;
        int destY = 0;
        float nPercent = 0;

        switch (Dimension)
        {
            case Dimensions.Width:
                nPercent = ((float)Size / (float)sourceWidth);
                break;
            default:
                nPercent = ((float)Size / (float)sourceHeight);
                break;
        }

        int destWidth = (int)(sourceWidth * nPercent);
        int destHeight = (int)(sourceHeight * nPercent);

        Bitmap bmPhoto = new Bitmap(destWidth, destHeight, PixelFormat.Format24bppRgb);
        bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

        Graphics grPhoto = Graphics.FromImage(bmPhoto);
        grPhoto.InterpolationMode = InterpolationMode.HighQualityBicubic;

        grPhoto.DrawImage(imgPhoto,
        new Rectangle(destX, destY, destWidth, destHeight),
        new Rectangle(sourceX, sourceY, sourceWidth, sourceHeight),
        GraphicsUnit.Pixel);

        grPhoto.Dispose();
        return bmPhoto;
    }

    static Image FixedSize(Image imgPhoto, int Width, int Height)
    {
        int sourceWidth = imgPhoto.Width;
        int sourceHeight = imgPhoto.Height;
        int sourceX = 0;
        int sourceY = 0;
        int destX = 0;
        int destY = 0;

        float nPercent = 0;
        float nPercentW = 0;
        float nPercentH = 0;

        nPercentW = ((float)Width / (float)sourceWidth);
        nPercentH = ((float)Height / (float)sourceHeight);

        //if we have to pad the height pad both the top and the bottom
        //with the difference between the scaled height and the desired height
        if (nPercentH < nPercentW)
        {
            nPercent = nPercentH;
            destX = (int)((Width - (sourceWidth * nPercent)) / 2);
        }
        else
        {
            nPercent = nPercentW;
            destY = (int)((Height - (sourceHeight * nPercent)) / 2);
        }

        int destWidth = (int)(sourceWidth * nPercent);
        int destHeight = (int)(sourceHeight * nPercent);

        Bitmap bmPhoto = new Bitmap(Width, Height, PixelFormat.Format24bppRgb);
        bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

        Graphics grPhoto = Graphics.FromImage(bmPhoto);
        grPhoto.Clear(Color.White );
        grPhoto.InterpolationMode = InterpolationMode.HighQualityBicubic;

        grPhoto.DrawImage(imgPhoto,
            new Rectangle(destX, destY, destWidth, destHeight),
            new Rectangle(sourceX, sourceY, sourceWidth, sourceHeight),
            GraphicsUnit.Pixel);

        grPhoto.Dispose();
        return bmPhoto;
    }
    static Image Crop(Image imgPhoto, int Width, int Height, AnchorPosition Anchor)
    {
        int sourceWidth = imgPhoto.Width;
        int sourceHeight = imgPhoto.Height;
        int sourceX = 0;
        int sourceY = 0;
        int destX = 0;
        int destY = 0;

        float nPercent = 0;
        float nPercentW = 0;
        float nPercentH = 0;

        nPercentW = ((float)Width / (float)sourceWidth);
        nPercentH = ((float)Height / (float)sourceHeight);

        if (nPercentH < nPercentW)
        {
            nPercent = nPercentW;
            switch (Anchor)
            {
                case AnchorPosition.Top:
                    destY = 0;
                    break;
                case AnchorPosition.Bottom:
                    destY = (int)(Height - (sourceHeight * nPercent));
                    break;
                default:
                    destY = (int)((Height - (sourceHeight * nPercent)) / 2);
                    break;
            }
        }
        else
        {
            nPercent = nPercentH;
            switch (Anchor)
            {
                case AnchorPosition.Left:
                    destX = 0;
                    break;
                case AnchorPosition.Right:
                    destX = (int)(Width - (sourceWidth * nPercent));
                    break;
                default:
                    destX = (int)((Width - (sourceWidth * nPercent)) / 2);
                    break;
            }
        }

        int destWidth = (int)(sourceWidth * nPercent);
        int destHeight = (int)(sourceHeight * nPercent);

        Bitmap bmPhoto = new Bitmap(Width, Height, PixelFormat.Format24bppRgb);
        bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

        Graphics grPhoto = Graphics.FromImage(bmPhoto);
        grPhoto.InterpolationMode = InterpolationMode.HighQualityBicubic;

        grPhoto.DrawImage(imgPhoto,
            new Rectangle(destX, destY-1, destWidth+1, destHeight+1),
            new Rectangle(sourceX, sourceY, sourceWidth, sourceHeight),
            GraphicsUnit.Pixel);

        grPhoto.Dispose();
        return bmPhoto;
    }

}
