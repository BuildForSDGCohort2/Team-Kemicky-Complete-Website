<%@ Page Title="BookIssuingPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="bookissuing.aspx.cs" Inherits="OnlineLMS.bookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="features">
            <div class="row">
                <div class="col">
                    <img src="img/book%20issue%20banner.jpg" class="img d-block w-100 rounded"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <%-- User profile Page card --%>
    <div class="container-fluid">
        <div class="row padding">
        <div class="col-md-5">
            <div class="card">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/Carrying%20books.gif" width="70" height="70" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Books Issuing Inventory Manager</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--Book Issuing forms --%>
                  <div class="row padding text-left">
                      <div class="col-md-6">
                          <label for="MemberId">Member ID:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="MemberId"></asp:TextBox>  
                         </div>
                      </div>
                       <div class="col-md-6">
                          <label for="BookId">Book ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server"
                                   placeholder="BookId"></asp:TextBox>  
                                   <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Go" />
                              </div>
                            </div>
                      </div>
                </div>   <%--End bookId row  --%>  
                  <div class="row padding text-left">
                      <div class="col-md-6">
                          <label for="MemberName">Member Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server"
                                      placeholder="MemberName" ReadOnly="true"></asp:TextBox>  
                         </div>
                      </div>
                       <div class="col-md-6">
                          <label for="BookName">Book Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server"
                                      placeholder="BookName"  ReadOnly="true"></asp:TextBox>  
                         </div>
                      </div>
                </div>   <%--End bookName row  --%>  
                  <div class="row padding text-left">
                      <div class="col-md-6">
                          <label for="IssueDate">Book Issue Date:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="IssueDate" TextMode="Date"></asp:TextBox>  
                         </div>
                      </div>
                       <div class="col-md-6">
                          <label for="ReturnDate">Book Return Date:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox6" runat="server"
                                      placeholder="ReturnDate"  TextMode="Date"></asp:TextBox>  
                         </div>
                      </div>
                </div>   <%--End bookName row  --%>  
                   &nbsp;                                       
                      <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                   &nbsp;
                      <div class="row padding">
                           <div class="col-6">
                               <asp:Button class="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="Issue" />
                            </div>
                             <div class="col-6">
                                 <asp:Button class="btn btn-lg btn-block btn-info" ID="Button3" runat="server" Text="Return" />
                             </div>                            
                          </div>
                    </div>
                 </div>
             </div>
          
          <div class="col-md-7">
             <div class="card">            
               <div class="card-body text-center">
                    <img class="img-top d-inline-block rounded-circle" src="img/book%20issue%20library2.jpg" width="100" height="100" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Issued Books List</h3>                         
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
