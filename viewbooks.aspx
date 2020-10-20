<%@ Page Title="ViewBooksPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="OnlineLMS.viewbooks" %>
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
                   <span><img src="img/view%20books%20banner3.jpg" class="img-fluid img-top d-inline-flex rounded" style="float:left;" width="150" height="20"></span><span><img src="img/viewbooksfragmentpic.jpg" class="img-fluid img-top d-inline-flex rounded" width="100" height="20"></span>
                       <h6 class="display-4 " style ="text-align:center;"><span>View Available Books In the Library Here</span></h6> 
                     <span><img src="img/veiwbooksfragment2.jpg" class="img-fluid img-top d-inline-flex rounded" style="float:right;" width="150" height="20"></span>
                 </div>
             </div>
          </div>
     </section>
     <br />
     <%-- User Sign up Page card --%>
    <div class="container-fluid bg-white">
      <div class="row padding">
        <div class="col-md-12">
            <div class="card border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/viewimage%20icon2.png"  width="90" height="90" />
                   <h3 class="my-3 card-title" style="color:darkmagenta;">Available Books</h3>             
                    <div class="row padding">
                        <div class="col-md-12">
                            <asp:Panel CssClass="alert alert-success" role="alert" ID="PnlAlert" runat="server" Visible="False">
                                <asp:Label ID="LblAlert" runat="server" Text="Alert"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                  &nbsp;                 
                  <%--View Books Table --%>               
                  <div class="col-12">
                          <hr class="dark-100" />
                  </div>       
                 <br/>
                   <div class="col-12">
                            <asp:SqlDataSource ID="SqlDataSourceViewBook" runat="server" ConnectionString="<%$ ConnectionStrings:elmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_book]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                            <asp:GridView CssClass="table table-responsive-md table-striped table-bordered"   ID="GridViewBook" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSourceViewBook" BorderStyle="Ridge" Font-Size="Large" HorizontalAlign="Justify" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                            <Columns>
                             <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                     <ControlStyle Font-Bold="True" Font-Size ="Large" />
                                     <ItemStyle Font-Bold="True" />
                             </asp:BoundField>
                            <asp:TemplateField HeaderText="Book Description">
                             <ItemTemplate>
                                               <div class="container-fluid">
                                                   <div class="row">
                                                      <div class="col-lg-10">
                                                         <div class="row">
                                                            <div class="col-12">
                                                               <asp:Label ID="Booksname" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                            </div>
                                                         </div>
                                                         <div class="row">
                                                            <div class="col-12">
                                                               <span>Author: </span>
                                                               <asp:Label ID="authorsname" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                               &nbsp;|<span><span>&nbsp;</span>Genre: </span>
                                                               <asp:Label ID="genre" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                               &nbsp;|<span>Language: <span>&nbsp;</span>
                                                                  <asp:Label ID="language" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                               </span>
                                                            </div>
                                                         </div>
                                                         <div class="row">
                                                            <div class="col-12">
                                                               Publisher: 
                                                               <asp:Label ID="publishernames" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                               &nbsp;| Publish Date: 
                                                               <asp:Label ID="publishdates" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                               &nbsp;| Pages: 
                                                               <asp:Label ID="pages" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                               &nbsp;| Edition: 
                                                               <asp:Label ID="editions" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                            </div>
                                                         </div>
                                                         <div class="row">
                                                            <div class="col-12">
                                                               Cost($):
                                                               <asp:Label ID="bookcost" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                               &nbsp;| Actual Stock: 
                                                               <asp:Label ID="actualstock" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                               &nbsp;| Available Stock: 
                                                               <asp:Label ID="currentstock" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                            </div>
                                                         </div>
                                                         <div class="row">
                                                            <div class="col-12">
                                                               Description: 
                                                               <asp:Label ID="bookdescription" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                            </div>
                                                         </div>
                                                      </div>
                                                      <div class="col-lg-2">
                                                         <asp:Image CssClass="img-fluid d-inline-block" ID="BookImage" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                      </div>
                                                   </div>
                                                </div>
                                             </ItemTemplate>
                                          <HeaderStyle Font-Size="Large" HorizontalAlign="Justify" />
                                       <ItemStyle Font-Size="Small" HorizontalAlign="Justify" />
                                          </asp:TemplateField>
                               </Columns>
                                   <EditRowStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                                   <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                   <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Font-Size="Large" />
                                   <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                   <RowStyle  Font-Size="Medium" ForeColor="DarkMagenta" HorizontalAlign="Justify" VerticalAlign="Middle"  />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                          </asp:GridView> 
                       </div> <%-- End GridView--%>
                      <div class="row padding">
                      <div class="col">
                        <hr class="dark-100" />
                     </div>
                </div>
                  &nbsp;
           <%-- Home Button --%>
                    <div class="row">  
                       <div class="col-6">
                           <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:5px;padding:10px;" >
                           <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                       </div>
                   </div> <%-- Home Button --%>                               
                </div> <%-- End --%>                             
            </div> <%-- End col-12 padding --%>                 
           </div>
         </div>
        </div><%-- End --%>     
</asp:Content>
