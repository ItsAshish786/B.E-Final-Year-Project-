using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
/// <summary>
/// Summary description for ImageFiles
/// </summary>
public class ImageFiles
{
    public ImageFiles()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static int GetFileCount(string Path)
    {
        DirectoryInfo dir = new DirectoryInfo(Path);
       return  dir.GetFiles().Length;
    }
}