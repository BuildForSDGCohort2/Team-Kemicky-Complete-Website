<%@ Page Title="BookIssuingPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="bookissuing.aspx.cs" Inherits="OnlineLMS.bookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--My Custom Javascript for Image Fileupload --%>
    <script type="text/javascript">   
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();       
       });
    </script>  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="welcomehead">
        <br />
        <div class="container-fluid">
             <div class="row padding bg-white" style="color:darkmagenta; margin-top:10px;">
                 <div class="col-12">
                   <h5 class="display-4" style ="vertical-align:text-bottom; text-align:center; margin:20px;"><span><img src="img/book%20issuing%20pic.jpg" class="img-fluid img-top d-inline-flex rounded" style="float:left;" width="200" height="20" ></span><span class="align-text-bottom">Book Issuing System</span><span><img src="img/banner-book-cover-design-and-layout.jpg"  class="img-fluid img-top d-inline-flex rounded" style="float:right;" width="200" height="40"></span></h5>                                           
                 </div>
             </div>
          </div>
     </section>  
    <br />
    <%--Books issued Profile forms --%>
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-5">
            <div class="card border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/Carrying%20books.gif" width="100" height="100" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Books Issuing Manager</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%-- User row card --%>
                   &nbsp;
                  <div class="row padding text-left">                 
                      <div class="col-md-6">                       
                          <span><i><img src="img/Namecard.png" width="30" height ="30"></i></span><label for="MemberId">Member ID:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="MemberID" runat="server"></asp:TextBox>  
                         </div>
                      </div>
                       <div class="col-md-6">
                          <span><i><img class="rounded-circle" src="img/bookID.jpg"  width="30" height ="30"></i></span><label for="BookId">Book ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="BookID" runat="server"></asp:TextBox>  
                                   <asp:Button CssClass="btn btn-success" ID="BooksGO" runat="server" Text="Go" OnClick="BooksGO_Click" />
                              </div>
                            </div>
                      </div>
                </div>   <%-- End return home row --%>  
                   &nbsp;
                  <div class="row padding text-left">
                      <div class="col-md-6">
                           <span><i><img src="img/NameCard2.png" width="33" height ="30"></i></span><label for="MemberName">Name & Surname:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="MemberName" runat="server" ReadOnly="true"></asp:TextBox>  
                         </div>
                      </div>
                       <div class="col-md-6">
                          <span><i><img class="rounded-bottom" src="img/bookname3.jpg" width="30" height ="30"></i></span><label for="BookName">Book Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BookName" runat="server" ReadOnly="true"></asp:TextBox>  
                         </div>
                      </div>
                </div>   <%-- End Container-fluid card --%>  
                   &nbsp;
                  <div class="row padding text-left">
                      <div class="col-md-6">
                         <span><i><img class="rounded-bottom" src="img/calenderIssue.png" width="40" height ="30"></i></span> <label for="IssueDate">Book Issue Date:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BookIssueDate" runat="server" TextMode="Date"></asp:TextBox>  
                         </div>
                      </div>
                       <div class="col-md-6">
                         <span><i><img class="rounded-bottom" src="img/CalenderReturn.jpg"  width="40" height ="30"></i></span><label for="ReturnDate">Book Return Date:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BookReturnDate" runat="server" TextMode="Date"></asp:TextBox>  
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
                               <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="IssueBtn" runat="server" Text="Issue" OnClick="IssueBtn_Click" />
                            </div>
                             <div class="col-6">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-info" ID="ReturnBtn" runat="server" Text="Return" OnClick="ReturnBtn_Click" />
                             </div>                            
                          </div>
                    </div>
                 </div>
             &nbsp;
            <%-- Home Button --%>
            <div class="row">  
                  <div class="col-6">
                     <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:2px;padding:10px;" >
                        <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a><span class="clearfix"></span>            
                </div>
               </div> <%-- End Home Button --%>
            <br />
          </div><%-- col-5 --%>
          
          <div class="col-md-7">
             <div class="card border-0">            
               <div class="card-body text-center" style="border-left:ridge;">
                    <img class="img-top d-inline-block rounded-circle" src="img/book%20issue%20library2.jpg" width="100" height="100" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Issued Books List</h3>                         
                  <div class="row padding">
                  <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                   
                  <%--Books issued Profile forms --%>
                  
                 <div class="row padding">
                   <div class="col-12">
                        <asp:SqlDataSource ID="SqlDataSourceBookIssue" runat="server" ConnectionString="<%$ ConnectionStrings:elmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_book_issue]"></asp:SqlDataSource>
                        <asp:GridView CssClass="table table-responsive table-striped table-bordered" ID="GridBookIssue" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceBookIssue" OnRowDataBound="GridBookIssue_RowDataBound" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                     <Columns>
                     <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id">
                         <HeaderStyle Font-Size="X-Small" />
                         </asp:BoundField>
                     <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name">
                         <HeaderStyle Font-Size="X-Small" />
                         </asp:BoundField>
                     <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id">
                         <HeaderStyle Font-Size="X-Small" />
                         </asp:BoundField>
                     <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name">
                         <HeaderStyle Font-Size="X-Small" />
                         </asp:BoundField>
                     <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date">
                         <HeaderStyle Font-Size="X-Small" />
                         </asp:BoundField>
                     <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date">
                         <HeaderStyle Font-Size="X-Small" />
                         </asp:BoundField>
                     </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="justify" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                  </asp:GridView>
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
      </div>     <%-- End Container-fluid card --%>
</asp:Content>
