<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Grid.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">

    $(document).ready(function () {
        var grid = $('#table-container').grid('MakeGrid', {
            ClassName: "Grid.UtentiGrid",
            Selectable: true,
            MaxElements: 10,
            Filter: [true],
            CallbackStart: openLoader,
            CallbackEnd: closeLoader,
            Order: [],
            Sortable: false,
                Columns: [
                    {
                        ColumnName: "id",
                        ColumnType: "int",
                        ColumnDisplayName: "ID Utente",
                        IsVisible: true,
                        IsPrimaryKey: true
                    },
                    {
                        ColumnName: "nome",
                        ColumnType: "string",
                        ColumnDisplayName: "Nome",
                        IsVisible: true,
                        IsPrimaryKey: false
                    },
                    {
                        ColumnName: "cognome",
                        ColumnType: "string",
                        ColumnDisplayName: "Cognome",
                        IsVisible: true,
                        IsPrimaryKey: false
                    },
                    {
                        ColumnName: "email",
                        ColumnType: "string",
                        ColumnDisplayName: "E-mail",
                        IsVisible: true,
                        IsPrimaryKey:  false
                    },
                    {
                        ColumnName: "amministratore",
                        ColumnType: "bool",
                        ColumnDisplayName: "Admin",
                        IsVisible: true,
                        IsPrimaryKey: false
                    },
                    {
                        ColumnName: "euro",
                        ColumnType: "euro",
                        ColumnDisplayName: "Euro",
                        IsVisible: true,
                        IsPrimaryKey: false
                    }
                ],
                ActionColumns: [
                    {
                        ColumnName: "Edit",
                        ColumnIcon: "mode_edit",
                        ColumnTooltip: "Modifica riga",
                        ColumnFunction: "edit",
                        ColumnID: "edit-id",
                        IsVisible: true
                    }
                ]
            
        });
        
        console.log('grid');
        console.log(grid);
    });

    function edit(pk) {
        console.log(pk);
    }

    function openLoader() {
        console.log('avvio modale di caricamento');
    }

    function closeLoader() {
        console.log('chiudo modale di caricamento');
    }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <p>Pagina 1</p>
    
    <div style="margin:5%;">        
        <!--<table style="margin:5%;" class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
            <thead>
                <tr>
                    <th class="mdl-data-table__cell--non-numeric">Material</th>
                    <th>Quantity</th>
                    <th>Unit price</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Acrylic (Transparent)</td>
                    <td>25</td>
                    <td>$2.90</td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Plywood (Birch)</td>
                    <td>50</td>
                    <td>$1.25</td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Laminate (Gold on Blue)</td>
                    <td>10</td>
                    <td>$2.35</td>
                </tr>
            </tbody>
        </table>

        <table style="margin:5%;" class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
            <thead >
                <tr>
                    <th class="mdl-data-table__cell--non-numeric">Material</th>
                    <th>Quantity</th>
                    <th>Unit price</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Acrylic (Transparent)</td>
                    <td>25</td>
                    <td>$2.90</td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Plywood (Birch)</td>
                    <td>50</td>
                    <td>$1.25</td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Laminate (Gold on Blue)</td>
                    <td>10</td>
                    <td>$2.35</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric" colspan="3">
                        
                        <button id="grid-pagina-indietro-btn" class="mdl-button mdl-js-button mdl-button--icon">
                            <i class="material-icons">keyboard_arrow_left</i>
                        </button>
                        <span class="mdl-badge">
                            3/10
                        </span>
                        <button id="grid-pagina-avanti-btn" class="mdl-button mdl-js-button mdl-button--icon">
                            <i class="material-icons">keyboard_arrow_right</i>
                        </button>
                        <div class="mdl-tooltip" for="grid-pagina-indietro-btn">Pagina Precedente</div>
                        <div class="mdl-tooltip" for="grid-pagina-avanti-btn">Pagina Successiva</div>
                        <span class="mdl-badge" data-badge="4">Elementi trovati</span>

                    </td>
                </tr>
            </tfoot>
        </table>-->
        <div id="table-container"></div>
    </div>
</asp:Content>
