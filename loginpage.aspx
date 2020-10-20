<%@ Page Title="UserLoginPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="OnlineLMS.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="features">
            <div class="row">
                <div class="col-12">
                    <img src="img/Login%20Page%20Banner.png" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <%-- User Login Page card --%>
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-6 mx-auto">
            <div class="card  border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/users_formlogin%20pix1.png" width="60" height="60" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">User Login</h3>
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <div class="row padding">
                      <div class="col text-left">
                        <span><i><img src="img/Namecard.png" width="30" height="30"></i></span><label for="username">Enter your username:</label>
                      <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>  
                      </div>
                     <span><i><img class="rounded-circle" src="img/password.png" width="30" height="30"></i></span><label for="password">Password:</label>
                       <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>  
                      </div>
                      <div class="form-group mx-auto col-md-6">        
                          <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />            
                    </div>
                     <div class="form-group mx-auto col-md-6">
                         <p class= "text-justify" style="color:darkmagenta">Don't have an account?,Click the Sign-Up button.</p>
                         <asp:Button CssClass="btn btn-secondary btn-block btn-lg" ID="BtnSignUp" runat="server" Text="Sign-Up" OnClick="BtnSignUp_Click" />
                    </div>
                  </div>
                 </div>
              </div>
            </div>
            <br />
            <a class="btn btn-primary rounded" href="homepage.aspx" role="button" >
                <img class="img-fluid rounded-circle" src="img/return%20to%20homepage2.jpg" width="100" height="200"></a>
        </div>
     </div>
  </div>
</asp:Content>

