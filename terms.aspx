<%@ Page Title="TermsPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="OnlineLMS.terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any hjava script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section id="welcomehead">
        <br />
        <div class="container-fluid">
             <div class="row padding bg-white" style="color:darkmagenta; margin-top:10px;">
                 <div class="col-12">
                   <h5 class="display-4" style ="vertical-align:text-bottom; text-align:center; margin:20px;"><span><img src="img/terms1.jpg" class="img-fluid img-top d-inline-flex rounded" style="float:left;" width="200" height="30" ></span><span class="align-text-bottom"></span><span><img src="img/online%20learning3.jpg" class="img-fluid img-top d-inline-flex rounded" style="float:right;" width="200" height="40"></span></h5>                                           
                 </div>
             </div>
          </div>
     </section>  
    <br />
    <div class="container-fluid bg-white">
        <div class="row padding">
            <div class="col-12">
                <div class="card border-0">
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
