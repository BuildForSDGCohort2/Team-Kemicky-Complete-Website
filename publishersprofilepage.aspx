<%@ Page Title="PublishersManagementPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="publishersprofilepage.aspx.cs" Inherits="OnlineLMS.PublishersProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- My Custom Script --%>
     <script type="text/javascript">
         $(document).ready(function() {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
     </script>
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
      <%-- Publisher profile Page card --%>
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-6">
            <div class="card border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/invent3.gif" width="90" height="90" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Publishers Details</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--Publisher Profile forms --%>
                  <div class="row padding text-left">
                      <div class="col-md-4">
                       &nbsp;
                       <span><i><img class="rounded-circle" src="img/userlogin%20icon.jpg" width="40" height="40"></i></span><label for="PublisherId">Publisher ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="PublisherID" runat="server"></asp:TextBox>  
                                   <asp:Button CssClass="btn btn-dark" ID="GoBtn" runat="server" Text="Go" OnClick="GoBtn_Click" />
                              </div>
                            </div>
                      </div>
                      <div class="col-md-8">
                           &nbsp;
                          <span><i><img class="rounded-circle" src="img/publisherNamelogo.jpg"  width="40" height ="40"></i></span><label for="PublisherName">Publisher Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="PublisherName" runat="server"></asp:TextBox>  
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
                               <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="AddBtn" runat="server" Text="Add" OnClick="AddBtn_Click" />
                            </div>
                             <div class="col-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-warning" ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" />
                             </div>
                             <div class="col-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="DeleteBtn" runat="server" Text="Delete" OnClick="DeleteBtn_Click" />
                             </div>
                          </div>
                    </div>
                 </div>
                  &nbsp;
             <%-- Home Button --%>
            <div class="row">  
               <div class="col-6">
                   <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:2px;padding:10px;" >
                   <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
               </div>
           </div> <%-- Home Button --%>
            <br />
           </div> <%-- Col-5 --%>
          
          <div class="col-md-6">
             <div class="card border-0">            
               <div class="card-body text-center" style=" border-left: ridge;">
                  <img class="img-top d-inline-block rounded-circle" src="img/buy%20and%20order%20textbook.gif" width="70" height="70" />
                  <h3 class="my-3 card-title" style="color:darkmagenta;">Publishers Information List</h3>                         
                  <div class="row padding">
                          <div class="col-12">
                             <hr class="dark-300" />
                                <%--Publisher Profile forms --%>               
                          <br/>
                         </div>  
                              <div class="col-12">
                                      <asp:SqlDataSource ID="SqlDataSourcePublisher" runat="server" ConnectionString="<%$ ConnectionStrings:elmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_publisher]"></asp:SqlDataSource>
                                       <asp:GridView  CssClass="table table-responsive-md  table-striped table-bordered"  ID="GridPublisher" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSourcePublisher" BorderStyle="Solid" Font-Size="Medium" ForeColor="Black" HorizontalAlign="Justify" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                           <AlternatingRowStyle BackColor="#CCCCCC" />
                                      <Columns>
                                          <asp:BoundField DataField="publisher_id" HeaderText="ID" ReadOnly="True" SortExpression="publisher_id" >
                                          <HeaderStyle Font-Size="Large" HorizontalAlign="Justify" />
                                          <ItemStyle HorizontalAlign="Justify" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="publisher_name" HeaderText="Publisher Name" SortExpression="publisher_name" >
                                          <HeaderStyle Font-Size="Large" HorizontalAlign="Justify" />
                                          <ItemStyle HorizontalAlign="Justify" />
                                          </asp:BoundField>
                                      </Columns>
                                           <EditRowStyle BorderStyle="None" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                           <FooterStyle BackColor="#CCCCCC" />
                                           <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="Black" Font-Bold="True" ForeColor="White" />
                                           <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                           <RowStyle BorderStyle="None" Font-Size="Small" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                           <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                           <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                           <SortedAscendingHeaderStyle BackColor="#808080" />
                                           <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                           <SortedDescendingHeaderStyle BackColor="#383838" />
                                  </asp:GridView> 
                              </div>
                        <div class="row padding">
                            <div class="col-12">
                                <hr class="dark-100" />
                            </div>
                         </div> <%-- publisher grid and info card --%>
                       &nbsp; 
              </div>  <%-- User row card --%>                  
        </div>     
     </div>
   </div>
 </div>
</div> <%-- End Container-fluid card --%>
</asp:Content>
