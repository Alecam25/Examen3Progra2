<%@ Page Title="" Language="C#" MasterPageFile="~/HOME.Master" AutoEventWireup="true" CodeBehind="Partidos.aspx.cs" Inherits="ExamenWeb3.Partidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container text-center">     
    <h1>REPORTES  </h1>
  
         
    
    </div>
    <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" Width="1009px" />
        <br />
        <br />
        <br />

    </div>
    <div class="container text-center">

        <asp:Button ID="Reportes" class="btn btn-outline-primary" runat="server" Text="Reportes" Width="711px" BackColor="Red" BorderColor="Black" BorderStyle="Outset" OnClick="Reportes_Click"  />
         
    </div>
</asp:Content>
