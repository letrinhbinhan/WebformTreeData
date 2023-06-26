using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization;
using System.Text;
using System.Xml;
using System.Collections.Generic;
//using System.Runtime.Serialization.Json;
using System.Text;
//using System.Xml.Linq;
public partial class Pages_FileTam_Temp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string jsonReader = JsonReaderWriterFactory.CreateJsonReader(Encoding.UTF8.GetBytes(json), new System.Xml.XmlDictionaryReaderQuotas());
        //JsonReaderWriterFactory
        //string xe = XElement.Load(jsonReader);
        //XElement
        //jsonReader
        //return FromElement(xe);
        //string = 

    }
}

//namespace Synergy.Common
//{
//    /// <summary>
//    /// A simplified version of JSON
//    /// </summary>
//    /// public class MyJson : Dictionary<string, MyJson>
//    {
//        /// <summary>
//        /// The value of the node
//        /// </summary>
//        public string Value;

//        // public Dictionary<string, MyJson> Children = new Dictionary<string, MyJson>();

//        /// <summary>
//        /// Parses the specified json.
//        /// </summary>
//        /// <param name=”json”>The json.</param>
//        /// <returns></returns>
//        public static MyJson Parse(string json)
//        {
//        var jsonReader = JsonReaderWriterFactory.CreateJsonReader(Encoding.UTF8.GetBytes(json), new System.Xml.XmlDictionaryReaderQuotas());
//        var xe = XElement.Load(jsonReader);
//        return FromElement(xe);
//        }

//        private static MyJson FromElement(XContainer xe)
//        {
//            var root = new MyJson { Value = “” };
//            foreach (var element in xe.Elements())
//            {
//                if (root.ContainsKey(element.Name.LocalName)) continue; // Don’t support duplicates so far
//                root.Add(element.Name.LocalName,
//                element.HasElements ? FromElement(element) : new MyJson {Value = element.Value});
//            }
//            return root;
//        }
//    }
//}