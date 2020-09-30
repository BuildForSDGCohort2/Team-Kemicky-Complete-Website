<%@ Page Title="UserLoginPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="OnlineLMS.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="features">
            <div class="row">
                <div class="col">
                    <img src="img/Login%20Page%20Banner.png" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <%-- User Login Page card --%>
    <div class="container">
        <div class="row padding">
        <div class="col-md-6 mx-auto">
            <div class="card col-auto">            
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
                         <label for="username">Enter your username:</label>
                      <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server"
                               placeholder="username"></asp:TextBox>  
                      </div>
                      <label for="password">Password:</label>
                       <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server"
                               placeholder="password" TextMode="Password"></asp:TextBox>  
                      </div>
                      <div class="form-group mx-auto col-md-6">        
                          <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />            
                    </div>
                     <div class="form-group mx-auto col-md-6">
                       <a href="signup.aspx"><input class="btn btn-secondary btn-block btn-lg" id="Button2" type="button" value="Sign-Up" /></a>
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
