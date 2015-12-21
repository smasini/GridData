using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataGridTable.Grid
{
    public abstract class GridBase
    {

        public abstract IEnumerable<object> GetEntities(int NumElements, int CurrentPage, object[] WhereParams, object[] OrderBy);

        public abstract int GetCount(object[] WhereParams);

        protected IEnumerable<object> Pagining(IEnumerable<object> objects, int NumElements, int CurrentPage)
        {
            int skip;
            if (CurrentPage == 1)
            {
                skip = 0;
            }
            else
            {
                skip = (CurrentPage - 1) * NumElements;
            }
            objects = objects.Skip(skip).Take(NumElements);
            return objects;
        }

    }
}