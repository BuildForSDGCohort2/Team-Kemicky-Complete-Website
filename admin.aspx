<%@ Page Title="AdminPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="OnlineLMS.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="features">
         <div class="row">
            <div class="col-12">
             <img  src="img/admin_banner1.jpg" class="img d-block w-100"  height="180" />
            </div>
         </div>
     </section>
    <br />
        <%-- Admin Login Page card --%>
    <div class="container">
        <div class="row padding">
        <div class="col-md-6 mx-auto" >
            <div class="card col-auto text-center">            
              <div class="card-body">
                  <img class="img-top d-inline-block rounded-circle" src="img/users_formlogin%20pix2.png"  width="60" height="60" />
               <h3 class="my-3 card-title" style="color:palevioletred;">Admin</h3>
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <div class="row padding">
                      <div class="col text-left">
                         <label for="e-mail">Admin e-mail:</label>
                      <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server"
                               placeholder="e-mail"></asp:TextBox>  
                      </div>
                      <label for="password">Password:</label>
                       <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server"
                               placeholder="password" TextMode="Password"></asp:TextBox>  
                      </div>
                      <div class="form-group mx-auto col-md-6">        
                          <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />            
                    </div>                   
                  </div>
                 </div>
              </div>
            </div>
            <br />
            <a class="btn btn-primary rounded" href="homepage.aspx" role="button" >
                <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="200"></a>
        </div>
     </div>
  </div>
</asp:Content>
