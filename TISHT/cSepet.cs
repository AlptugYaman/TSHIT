using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace TISHT
{
    public class cSepet
    {
        public DataTable YeniSepet()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("sepetID");
            dt.Columns["sepetID"].DataType = typeof(int);
            dt.Columns["sepetID"].AutoIncrement = true;
            dt.Columns["sepetID"].AutoIncrementSeed = 1;
            dt.Columns["sepetID"].AutoIncrementStep = 1;

            dt.Columns.Add("urunId");
            dt.Columns["urunID"].DataType = typeof(int);

            dt.Columns.Add("urunadi");
            dt.Columns["urunadi"].DataType = typeof(string);

            dt.Columns.Add("adet");
            dt.Columns["adet"].DataType = typeof(int);
            dt.Columns["adet"].DefaultValue = 0;

            dt.Columns.Add("birimfiyat");
            dt.Columns["birimfiyat"].DataType = typeof(decimal);
            dt.Columns["birimfiyat"].DefaultValue = 0;

            dt.Columns.Add("tutar");
            dt.Columns["tutar"].DataType = typeof(decimal);
            dt.Columns["tutar"].DefaultValue = 0;

            return dt;
        }




    }
}