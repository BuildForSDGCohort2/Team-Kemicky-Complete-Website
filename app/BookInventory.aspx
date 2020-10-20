<%@ Page Title="BookInventoryPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="BookInventory.aspx.cs" Inherits="OnlineLMS.BookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--My Custom Javascript for Image Fileupload --%>
    <script type="text/javascript">   
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();       
       });
 
       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
 
               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };
 
               reader.readAsDataURL(input.files[0]);
           }//
       }//
 
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="welcomehead">
        <br />
        <div class="container-fluid">
             <div class="row padding bg-white" style="color:darkmagenta; margin-top:10px;">
                 <div class="col-12">
                   <h5 class="display-4" style ="vertical-align:text-bottom; text-align:center; margin:20px;"><span><img src="img/bookinventorybanner.png" class="img-fluid img-top d-inline-flex rounded" style="float:left;" width="200" height="20" >Book Inventory System</span><span class="align-text-bottom"></span><span><img src="img/banner-book-cover-design-and-layout.jpg"  class="img-fluid img-top d-inline-flex rounded" style="float:right;" width="200" height="40"></span></h5>                                           
                 </div>
             </div>
          </div>
     </section>  
    <br />
    <div class="container-fluid bg-white">
        <div class="row padding">
          <div class="col-md-5">
            <div class="card border-0">            
                <div class="card-body text-center">
                <img class="img-top d-inline-block rounded" id="imgview" src="img/bookinventory2.jpg" width="100" height="100" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Book Inventory Manager</h3>                     
                  <div class="row padding">
                        <div class="col">
                             <hr class="dark-100" />
                       </div>
                  </div>
                  &nbsp;
                  <div class="row">
                      <span class="col-1"><i><img class="rounded-circle" src="img/FileUploadImage.png" width="30" height ="30"></i></span>
                      <div class="col-11">
                          <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUploadBooK" runat="server"></asp:FileUpload>
                      </div>                    
                  </div>
                 &nbsp;
                  <%-- Offical Language --%>
                  <div class="row  text-left" >
                     <div class="col-5">
                     <span><i><img class="rounded-circle" src="img/bookID.jpg" width="30" height ="30"></i></span><label for="BookId">Book ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="BooksID" runat="server"></asp:TextBox>  
                                   <asp:LinkButton CssClass="btn btn-primary" ID="BookBtnGO" runat="server" OnClick="BookBtnGO_Click">Go
                                   </asp:LinkButton>
                              </div>
                            </div>
                      </div>                     
                      <div class="col-7">
                          <span><i><img  class="rounded-circle" src="img/bookname3.jpg" width="30" height ="30"></i></span><label for="BookName">Book Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BooksName" runat="server"></asp:TextBox>  
                         </div>
                      </div>                    
                      
                </div>   <%-- End row --%>  
                &nbsp;
                  <div class="row text-left">
                     <div class="col-md-4">
                          <span><i><img class="rounded-bottom" src="img/LanguageImage.png" width="30" height ="30"></i></span><label for="language">Language:</label>
                           <div class="form-group">
                               <asp:DropDownList  CssClass="form-control" ID="DropDownLanguage" runat="server">
                                   <%-- Default Selection --%>
                                   <asp:ListItem Text="Select" Value="Select"/>
                                     <%-- Offical Language --%>
                                   <asp:ListItem Text="Arabic" Value="Arabic"/>
                                   <asp:ListItem Text="English" Value="English"/>
                                    <asp:ListItem Text="French" Value="French"/>

                                     <%-- South Africa Major Languages --%>
                                   <asp:ListItem Text="Afrikaans"  Value="Afrikaans"/>
                                   <asp:ListItem Text="Ndebele" Value="Ndebele"/>
                                   <asp:ListItem Text="Northern Sotho" Value="Northern Sotho"/>
                                   <asp:ListItem Text="Southern Sotho" Value="Southern Sotho" />
                                   <asp:ListItem Text="Swathi" Value="Swathi"/>
                                   <asp:ListItem Text="Tsonga"  Value="Tsonga"/>
                                   <asp:ListItem Text="Tswana" Value="Tswana" />
                                   <asp:ListItem Text="Venda" Value="Venda" />
                                   <asp:ListItem Text="Xhosa" Value="Xhosa" />
                                   <asp:ListItem Text="Zulu" Value="Zulu" />

                                     <%-- Nigeria Major Languages --%>         
                                    <asp:ListItem Text="Edo" Value="Edo" />
                                    <asp:ListItem Text="Fulfulde" Value="Fulfulde" />
                                    <asp:ListItem Text="Hausa" Value="Hausa"/>
                                    <asp:ListItem Text="Ibibio" Value="Ibibio" />
                                    <asp:ListItem Text="Igbo" Value="Igbo" />
                                    <asp:ListItem Text="Kanuri" Value="Kanuri" />
                                    <asp:ListItem Text="Urhobo" Value="Urhobo" />
                                    <asp:ListItem Text="Yoruba" Value="Yoruba" />
                               </asp:DropDownList>
                            </div>
                         &nbsp;
                          <span><i><img class="rounded-circle" src="img/publisherNamelogo.jpg"  width="30" height ="30"></i></span><label for="PublisherName">Publisher Name:</label>
                           <div class="form-group">
                               <asp:DropDownList  CssClass="form-control" ID="DropDownPublisher" runat="server">
                                     <%-- Famous Publishers--%>
                                   <asp:ListItem Text="Publisher1" Value="Publisher1"/>
				                   <asp:ListItem Text="Publisher2" Value="Publisher2" />
                                   <asp:ListItem Text="Select" Value="Select"/>  <%-- Default Selection --%>                                  
                               </asp:DropDownList>
                            </div>
                      </div>                     
                      <div class="col-md-4">
                          <span><i><img class="rounded-circle" src="img/authornamelogo.png" width="78" height="32"></i></span><label for="AuthorName">:</label>
                           <div class="form-group">
                               <asp:DropDownList  CssClass="form-control" ID="DropDownAuthor" runat="server">                                  
                                     <asp:ListItem Text="Author1" Value="Author1"/>
                                     <asp:ListItem Text="Author2" Value="Author2"/>
                                     <asp:ListItem Text="Select" Value="Select"/>  <%-- Default & Famous Authors--%>
                               </asp:DropDownList>
                            </div>
                          &nbsp;
                           <span><i><img class="rounded-circle" src="img/CalenderDOB.png" width="30" height="30"></i></span><label for="PublishDate">Publish Date:</label>
                           <div class="form-group">
                              <asp:TextBox  CssClass="form-control" ID="PublishDate" runat="server" TextMode="Date"></asp:TextBox> 
                            </div>
                      </div>                    
                      <div class="col-md-4">
                          <span><i><img class="rounded-circle" src="img/BookGenreImage.jpg"  width="30" height ="30"></i></span><label for="genre">Genre:</label>
                           <div class="form-group">
                               <asp:ListBox  CssClass="form-control"  ID ="ListBoxGenre" runat="server"  Rows="5"  SelectionMode="Multiple">
                                    <asp:ListItem Text="Action" Value="Action" />
                                    <asp:ListItem Text="Adventure" Value="Adventure" />
                                    <asp:ListItem Text="Comic Books" Value="Comic Books" />
                                    <asp:ListItem Text="Self Help" Value="Self Help" />
                                    <asp:ListItem Text="Motivation" Value="Motivation" />
                                    <asp:ListItem Text="Contemporary" Value="Contemporary" />
                                    <asp:ListItem Text="Healthy LifeStyle" Value="Healthy Lifestyle" />
                                    <asp:ListItem Text="Wellness" Value="Wellness" />
                                    <asp:ListItem Text="Crime" Value="Crime" />
                                    <asp:ListItem Text="Drama" Value="Drama" />
                                    <asp:ListItem Text="Fantansy" Value="Fantasy" />
                                    <asp:ListItem Text="Horror" Value="Horror" />
                                    <asp:ListItem Text="Poetry" Value="Poetry" />
                                    <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                    <asp:ListItem Text="Romance" Value="Romance" />
                                    <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                    <asp:ListItem Text="Suspense" Value="Suspense" />
                                    <asp:ListItem Text="Thriller" Value="Thriller" />
                                    <asp:ListItem Text="Art" Value="Art" />
                                    <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                    <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                    <asp:ListItem Text="Health" Value="Health" />
                                    <asp:ListItem Text="History" Value="History" />
                                    <asp:ListItem Text="English Language" Value="English Language" />
                                    <asp:ListItem Text="Literature" Value="Literature" />
                                    <asp:ListItem Text="Mathematics" Value="Mathematics" />
                                    <asp:ListItem Text="Science" Value="Science" />
                                    <asp:ListItem Text="Physics" Value="Physics" />
                                    <asp:ListItem Text="Chemistry" Value="Chemistry" />
                                    <asp:ListItem Text="IT" Value="IT" />
                                    <asp:ListItem Text="Engineering" Value="Engineering" />
				                    <asp:ListItem Text="Economics" Value="Economics" />
                                    <asp:ListItem Text="Business" Value="Business" />
                                    <asp:ListItem Text="Other Textbooks" Value="Other Textbooks" />
                                    <asp:ListItem Text="Travel & Tourism" Value="Travel & Tourism" />
                               </asp:ListBox>
                            </div>
                      </div>
                </div>    <%-- End row --%>
                 &nbsp;
                  <div class="row  text-left">                    
                      <div class="col-md-4">
                          <span><i><img  class="rounded-circle" src="img/Edition.jpg" width="30" height ="30"></i></span><label for="Edition">:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BooKsEdition" runat="server"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-md-4">
                         <span><i><img class="rounded-circle" src="img/book%20cost.png" width="30" height ="30"></i></span><label for="costperunit">Book Cost($(per unit)):</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="BooKsCost" runat="server" TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                      <div class="col-md-4">
                         <span><i><img class="rounded-circle" src="img/pagesIcon.jpg" width="30" height ="30"></i></span><label for="pages">Pages:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="BooKsPages" runat="server" TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%-- End row --%>
                 &nbsp;
                  <div class="row  text-left">                    
                      <div class="col-md-4">
                          <span><i><img class="rounded-circle" src="img/actual%20stockImage.png" width="30" height ="30"></i></span><label for="ActualStock">Actual Stock:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BooKsActualStock" runat="server" TextMode="Number"></asp:TextBox>  
                         </div>
                      </div>                      
                      <div class="col-md-4">
                          <span><i><img class="rounded-circle"  src="img/currentstock.jpg" width="30" height ="30"></i></span><label for="CurrentStock">Current Stock:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="BooKsCurrentStock" runat="server"  ReadOnly="true"  TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                      <div class="col-md-4">
                          <span><i><img class="rounded-bottom" src="img/stockImage.jpg" width="30" height ="30"></i></span><label for="IssuedBooks">Issued Books:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="BooKsIssued" runat="server" ReadOnly="true"  TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%-- End row --%>
                 &nbsp;
                  <div class="row  text-left">
                      <div class="col-12">
                          <span><i><img class="rounded-circle" src="img/BookDescription.png" width="30" height ="30"></i></span><label for="BookDescription">Book Description:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="BooKsDescription" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>  
                         </div>
                      </div> 
                    </div>
                </div>   <%-- End Card body1--%>
                &nbsp;   
             
                         <div class="row ">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
               &nbsp;
                         <div class="row m-2">
                            <div class="col-md-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="BooKsAdd" runat="server" Text="Add" OnClick="BooKsAdd_Click" />
                          </div> 
                          <div class="col-md-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-warning" ID="BooKsUpdate" runat="server" Text="Update" OnClick="BooKsUpdate_Click" />
                          </div> 
                         <div class="col-md-4">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="BooKsDelete" runat="server" Text="Delete" OnClick="BooKsDelete_Click" />
                         </div> 
                      </div>
       </div> <%-- End card1 --%>
              &nbsp;
            <div class="row">  
                  <div class="col-6">
                     <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:2px;padding:10px;" >
                        <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a><span class="clearfix"></span>            
                </div>
      </div> <%-- Home Button --%>
    <br/>
           </div> <%-- End col-5 --%>
    
          <div class="col-md-7">
              <div class="card border-0">  
                <div class="card-body text-center" style="border-left:ridge;"> 
                  <img class="img-top d-inline-block rounded-circle" src ="img/bookinventory.jpg" width="100" height="100" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Book Inventory List</h3>                         
                  <div class="row padding">
                  <div class="col-12">
                          <hr class="dark-100" />
                  </div>       
                 <br/>
                   <div class="col-12">
                            <asp:SqlDataSource ID="SqlDataSourceBookInventory" runat="server" ConnectionString="<%$ ConnectionStrings:elmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_book]"></asp:SqlDataSource>
                            <asp:GridView CssClass="table table-responsive table-striped table-bordered"   ID="GridBooKs" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSourceBookInventory" BorderStyle="None" Font-Size="Small" ForeColor="Black" HorizontalAlign="Justify" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                            <Columns>
                             <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                     <ControlStyle Font-Bold="True" Font-Size ="Large" />
                                     <HeaderStyle Font-Size="Large" />
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
                                          <HeaderStyle Font-Bold="True" Font-Size="Large"/>
                                <ItemStyle HorizontalAlign="Justify"/>
                                          </asp:TemplateField>
                               </Columns>
                                   <EditRowStyle BorderStyle="None" HorizontalAlign="Justify" VerticalAlign="Middle"/>
                                   <FooterStyle BackColor="#CCCC99" />
                                   <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                   <RowStyle BackColor="#F7F7DE" BorderStyle="None" Font-Size="Small" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                          </asp:GridView> 

                 </div> <%-- End GridView--%>
              </div><%-- End card2 body --%>
               <div class="row padding">
                        <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
              &nbsp;  
           </div> <%-- End card2 --%>
        </div>       <%-- End col-7 --%>                     
   </div> <%-- End row padding --%>  
     </div>
  </div><%-- End Container-fluid card --%>
</asp:Content>
