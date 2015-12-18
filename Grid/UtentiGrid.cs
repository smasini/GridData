﻿using Grid.GridLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grid
{
    public class UtentiGrid : GridBase
    {
        public override int GetCount(object[] WhereParams)
        {
            exampledbEntities context = new exampledbEntities();
            var tot = context.Utenti.Count();

            return tot;
        }

        public override IEnumerable<object> GetEntities(int NumElements, int CurrentPage, object[] WhereParams, object[] OrderBy)
        {
            exampledbEntities context = new exampledbEntities();
            
            var utenti = Pagining(context.Utenti, NumElements, CurrentPage);

            //eventuali filtri e ordinamenti

            return utenti;
        }
    }
}