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
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-6 mx-auto" >
            <div class="card col-auto text-center border-0">            
              <div class="card-body">
                  <img class="img-top d-inline-block rounded-circle" src="img/users_formlogin%20pix2.png"  width="90" height="90" />
                  <h3 class="my-3 card-title" style="color:palevioletred;">Admin</h3>
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <div class="row padding">
                       &nbsp;
                      <div class="col text-left">                  
                      <span><i><img  class="rounded-circle" src="img/userlogin%20icon.jpg" width="30" height="30"></i></span><label for="username">Admin Username:</label>
                      <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtAdminUsername" runat="server"></asp:TextBox>  
                      </div>
                      &nbsp;
                      <span><i><img src="img/users_password_formlogin%20pix2.png" width="30" height="30"></i></span><label for="password">Password:</label>
                       <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtAdminPassword" runat="server" TextMode="Password"></asp:TextBox>  
                      </div>
                      <div class="form-group mx-auto col-md-6">        
                          <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="BtnAdminLogin" runat="server" Text="Login" OnClick="BtnAdminLogin_Click" />            
                    </div>                   
                  </div>
                 </div>
              </div>                      
            </div>         
        </div>
     </div>       
  </div>
     &nbsp; 
         <%-- Home Button --%>
             <div class="row">  
            <div class="col-6">
           <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:360px;padding:10px;" >
           <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
       </div>
   </div> <%-- Home Button --%>

</asp:Content>
