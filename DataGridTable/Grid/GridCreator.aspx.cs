using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataGridTable.Grid
{
    public partial class GridCreator : System.Web.UI.Page
    {
        
        [WebMethod]
        public static object MakeGrid(string ClassName, int MaxElementsForPage, int CurrentPage, object[] Filter, object[] Order)
        {
            Type t = Type.GetType(ClassName);
            var obj = Activator.CreateInstance(t);

            MethodInfo entitiesMethod = t.GetMethod("GetEntities");
            var entities = (IEnumerable<object>)entitiesMethod.Invoke(obj, new object[]{ MaxElementsForPage, CurrentPage, Filter, Order } );
            MethodInfo countMethod = t.GetMethod("GetCount");
            var count = (int)countMethod.Invoke(obj, new object[] { Filter });


            var totalPage = DivideRoundingUp(count,MaxElementsForPage);
            return new {
                Count = count,
                NumPage = totalPage,
                Entities = entities
            };
        }

        private static int DivideRoundingUp(int x, int y)
        {
            // TODO: Define behaviour for negative numbers
            int remainder;
            int quotient = Math.DivRem(x, y, out remainder);
            return remainder == 0 ? quotient : quotient + 1;
        }

    }
}