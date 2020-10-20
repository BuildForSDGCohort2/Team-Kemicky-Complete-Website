<%@ Page Title="AuthorsManagementPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="authorspage.aspx.cs" Inherits="OnlineLMS.AuthorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <%-- My custom Java Script --%>
     <script type="text/javascript">       
         $(document).ready(function() {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();        
      });
     </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="features">
            <div class="row">
                <div class="col-12">
                   <img src="img/Author-Collections-Profile2.jpg" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
     <%-- User profile Page card --%>
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-6">
            <div class="card border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/author1.gif" width="100" height="100" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Author Details</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--Author Profile forms --%>
                  <div class="row padding text-left">
                      <div class="col-md-4">
                     &nbsp;
                      <span><i><img class="rounded-circle" src="img/userlogin%20icon.jpg" width="40" height="40"></i></span><label for="AuthorId">Author ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="AuthorID" runat="server"></asp:TextBox>  
                                   <asp:Button CssClass="btn btn-dark" ID="BtnGo" runat="server" Text="Go" OnClick="BtnGo_Click" />
                              </div>
                            </div>
                      </div>
                      <div class="col-md-8">
                     &nbsp;
                      <span><i><img class="rounded-bottom" src="img/authornamelogo.png"  width="100" height="40"></i></span><label for="AuthorName">:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="AuthorName" runat="server"></asp:TextBox>  
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
                               <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="BtnAddAuthor" runat="server" Text="Add" OnClick="BtnAddAuthor_Click" />
                            </div>
                             <div class="col-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-warning" ID="BtnUpdateAuthor" runat="server" Text="Update" OnClick="BtnUpdateAuthor_Click" />
                             </div>
                             <div class="col-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="BtnDeleteAuthor" runat="server" Text="Delete" OnClick="BtnDeleteAuthor_Click" />
                             </div>
                          </div>
                    </div>
                 </div>
                      &nbsp;
           <%-- Home Button --%>
            <div class="row">  
               <div class="col-6">
                   <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:2px; padding:10px;" >
                   <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
               </div>
           </div> <%-- Home Button --%>
        <br />
         </div><%-- End Card1 --%>
          
          <div class="col-md-6">
             <div class="card border-0">            
               <div class="card-body text-center" style="border-left:ridge;">
                    <img class="img-top d-inline-block rounded-circle"  src="img/invent2.gif"  width="100" height="100" />
                    <h3 class="my-3 card-title " style="color:darkmagenta;">Authors Information List</h3>                         
                  <div class="row padding">
                  </div>
                  <%--Author Profile forms --%>
                 <div class="row padding">
                      <div class="col-12">
                            <hr class="dark-100" />
                      </div>
                     <br />
                 </div>
                   <div class="row padding">
                     <div class="col">
                      <div class="col-12">
                              <asp:SqlDataSource ID="SqlDataSourceAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:elmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_author]"></asp:SqlDataSource>
                               <asp:GridView CssClass="table table-responsive-md table-striped table-bordered"   ID="GridAuthor" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSourceAuthor" BorderStyle="None" Font-Size="Medium" HorizontalAlign="Justify" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3">
                              <Columns>
                                  <asp:BoundField DataField="author_id" HeaderText="ID" ReadOnly="True" SortExpression="author_id" >
                                  <HeaderStyle Font-Size="Large" HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="author_name" HeaderText="Author Name" SortExpression="author_name" >
                                  <HeaderStyle Font-Size="Large" HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                               </Columns>
                                   <EditRowStyle BorderStyle="None" HorizontalAlign="Justify" VerticalAlign="Middle"/>
                                   <FooterStyle BackColor="White" ForeColor="#000066" />
                                  <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                   <RowStyle BorderStyle="None" Font-Size="Small" ForeColor="#000066" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                   <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                   <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                   <SortedDescendingHeaderStyle BackColor="#00547E" />
                          </asp:GridView> 
                      </div>
                     </div>
                  </div>    
                  <div class="row padding">
                                  <div class="col-12">
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
