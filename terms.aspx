<%@ Page Title="TermsPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="OnlineLMS.terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any hjava script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section id="features">
            <div class="row">
                <div class="col">
                    <img src="img/Terms%20And%20conditionsBanner.jpg" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <div class="container">
        <div class="row padding">
            <div class="col-12">
                <div class="card">
                     <div class="card-body text-center">
                          <img class="img-top d-inline-block rounded-circle" src="img/PolicyPic.jpg" width="100" height="100" />
                         
                         <div class="row padding">
                             <div class="col">
                                  <hr class="dark-100" />
                             </div>        
                         </div>
                         <%-- Jumbotron Mission Statement --%> 
                         <div class="jumbotron jumbotron-fluid" style="background-color:aquamarine;">
                              <div class="container">
                                 <img class="img d-block  w-100" src="img/Terms%20And%20conditions.png" height="250" />
                              </div>
                          </div>
                         <div class="jumbotron jumbotron-fluid" style ="background-color:goldenrod;">
                              <div class="container">
                                <h6 class="display-4"style="color:mediumvioletred">Other Library Terms And Conditions:</h6>
                                       <img class="img d-block  w-100" src="img/libraryterms.png" height="250" />
                              </div>
                              </div>
                          </div>
                         &nbsp;                                       
                          <div class="row padding">
                                  <div class="col">
                                       <hr class="dark-100" />
                                </div>
                          </div>
                      &nbsp;
                     </div>
                </div>
            </div>
      

        
             &nbsp;                                 
             <div class="row padding">
                      <div>
                          <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:15px;padding:10px;" >
                             <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                     </div>
             </div><%-- End return home row --%>           
      </div>     <%-- End Container-fluid card --%>
</asp:Content>
