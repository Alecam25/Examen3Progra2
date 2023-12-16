<%@ Page Title="" Language="C#" MasterPageFile="~/HOME.Master" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="ExamenWeb3.Encuesta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">     
    <h1>ENCUESTAS PARTIDOS  </h1>
  
         
    
    </div>
    <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" Width="1009px" />
    
    <div class="container text-center">
        Nombre: <asp:TextBox ID="tNombre" class="form-control" runat="server" BackColor="#00FFCC" ></asp:TextBox>
        <label for="txtEdad" class="form-label ">Edad:</label>
        <asp:TextBox runat="server" ID="tEdad" CssClass="form-control" type="number" min="18" max="50" required="true" BackColor="#00FFCC"/>
        Correo: <asp:TextBox ID="tCorreo" class="form-control" runat="server" BackColor="#00FFCC"></asp:TextBox>
        <label for="txtPartidoPoliticoID" class="form-label ">PartidoPoliticoID:</label>
        <asp:TextBox runat="server" ID="tPartidoPoliticoID" CssClass="form-control" type="number" min="1" max="3" required="true" BackColor="#00FFCC"/>
    </div>

        <br />
        <br />
        <br />

    </div>
    <div class="container text-center">

        <asp:Button ID="Button1" class="btn btn-outline-primary" runat="server" Text="Agregar" Width="711px" BackColor="#FFFF99" BorderColor="Blue" BorderStyle="Double" OnClick="Button1_Click" />
         
    </div>

</asp:Content>
