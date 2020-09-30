<%@ Page Title="PublishersManagementPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="publisherspage.aspx.cs" Inherits="OnlineLMS.publisherpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <%-- Type any other java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="features">
            <div class="row">
                <div class="col">
                    <img src="img/publisher%20Banner.png"  class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
      <%-- User profile Page card --%>
    <div class="container">
        <div class="row padding">
        <div class="col-md-5">
            <div class="card">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/invent3.gif" width="70" height="70" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Publishers Details</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--Author Profile forms --%>
                  <div class="row padding text-left">
                      <div class="col-md-4">
                          <label for="PublisherId">Publisher ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server"
                                   placeholder="PublisherId"></asp:TextBox>  
                                   <asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Go" />
                              </div>
                            </div>
                      </div>
                      <div class="col-md-8">
                          <label for="PublisherName">Publisher Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="PublisherName"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%--End author name row  --%>                                                   
                   &nbsp;                                       
                      <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                   &nbsp;
                         <div class="row padding">
                           <div class="col-4">
                               <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" />
                            </div>
                             <div class="col-4">
                                 <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" />
                             </div>
                             <div class="col-4">
                                 <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" />
                             </div>
                          </div>
                    </div>
                 </div>
             </div>
          
          <div class="col-md-7">
             <div class="card">            
               <div class="card-body text-center">
                    <img class="img-top d-inline-block rounded-circle" src="img/buy%20and%20order%20textbook.gif" width="70" height="70" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Publishers Information List</h3>                         
                  <div class="row padding">
                  <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--Books issued Profile forms --%>
                  
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
                  </div>
                </div>     <%-- User grid and info card --%>
            </div>     <%-- User row card --%>
             &nbsp;                                 
             <div class="row padding">
                      <div>
                          <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:15px;padding:10px;" >
                             <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                     </div>
             </div><%-- End return home row --%>           
      </div>     <%-- End Container-fluid card --%>
</asp:Content>

