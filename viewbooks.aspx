<%@ Page Title="ViewBooksPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="OnlineLMS.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="features">
            <div class="row">
                <div class="col">
                    <img src="img/viewboook.png" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
     <%-- User Sign up Page card --%>
    <div class="container">
        <div class="row padding">
        <div class="col-md-9 mx-auto">
            <div class="card col-auto">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/viewimage%20icon.png" width="70" height="70" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">View Available Books</h3>             
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--View Books Table --%>
                  
                 <div class="row padding">
                      <div class="col">
                          <asp:GridView class="table table-striped table-border table-info thead-dark" ID="GridView1" runat="server"></asp:GridView> 
                      </div>
                  </div>
                        
                    <div class="row padding">
                        <div class="col">
                          <hr class="dark-100" />
                         </div>
                     </div>
                       &nbsp; 
                        </div>
                          <div class="form-group mx-auto col-md-6">
                         <input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="View Books" />
                        </div>
                      </div> <%-- User grid and info card --%>
                   </div>   <%-- User row card --%> 
                      &nbsp;
                          <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                   </div>
                &nbsp;
                <div class="col-4 text-center" >
                   <a class="btn btn-primary rounded" href="homepage.aspx" role="button" >
                        <img class="img-fluid rounded-circle" src="img/return%20to%20homepage2.jpg" width="100" height="200"></a>            
              </div>                
            </div>
</asp:Content>
