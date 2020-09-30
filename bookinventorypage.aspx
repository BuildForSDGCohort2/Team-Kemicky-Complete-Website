<%@ Page Title="BookInventoryPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="bookinventorypage.aspx.cs" Inherits="OnlineLMS.bookinventorypage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="features">
            <div class="row">
                <div class="col">
                    <img src="img/bookinventorybanner1.png" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <%-- User profile Page card --%>
    <div class="container-fluid">
        <div class="row">
        <div class="col-md-5">
            <div class="card">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/bookinventory.jpg" width="100" height="100" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Book Inventory Details</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <div class="row">
                      <div class="col">
                          <asp:FileUpload  CssClass="form-control" ID="FileUpload1" runat="server"></asp:FileUpload>
                      </div>
                  </div>
                  <%--Membership forms --%>
                  <div class="row  text-left" >
                     <div class="col-3">
                          <label for="BookId">Book ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server"
                                   placeholder="BookId"></asp:TextBox>  
                                   <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server">Go
                                   </asp:LinkButton>
                              </div>
                            </div>
                      </div>                     
                      <div class="col-9">
                          <label for="BookName">BooK Name:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="BookName"></asp:TextBox>  
                         </div>
                      </div>                    
                      
                </div>   <%--End status row  --%>  
                  <div class="row text-left">
                     <div class="col-md-4">
                          <label for="language">Language:</label>
                           <div class="form-group">
                               <asp:DropDownList  CssClass="form-control" ID="DropDownList1" runat="server">
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

                           <label for="PublisherName">Publisher Name:</label>
                           <div class="form-group">
                               <asp:DropDownList  CssClass="form-control" ID="DropDownList2" runat="server">
                                     <%-- Famous Publishers in America,South africa & Nigeria 2019 --%>
                                   <asp:ListItem Text="Publisher1" Value="Publisher1"/>
				                   <asp:ListItem Text="Publisher2" Value="Publisher2" />
                                   
                               </asp:DropDownList>
                            </div>
                      </div>                     
                      <div class="col-md-4">
                          <label for="AuthorName">Author Name:</label>
                           <div class="form-group">
                               <asp:DropDownList  CssClass="form-control" ID="DropDownList3" runat="server">
                                     <%-- Offical Language --%>
                                   <asp:ListItem Text="Author1" Value="Author1"/>
                                   <asp:ListItem Text="Author2" Value="Author2"/>
                               </asp:DropDownList>
                            </div>

                           <label for="PublishDate">Publish Date:</label>
                           <div class="form-group">
                              <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server"
                                   placeholder="PublishDate"   TextMode="Date"></asp:TextBox> 
                            </div>
                      </div>                    
                      <div class="col-md-4">
                          <label for="genre">Genre:</label>
                           <div class="form-group">
                               <asp:ListBox  CssClass="form-control"  ID ="ListBox1" runat="server"  Rows="5"  SelectionMode="Multiple">
                                     <asp:ListItem Text="Action" Value="Action" />
                                    <asp:ListItem Text="Adventure" Value="Adventure" />
                                    <asp:ListItem Text="Comic Books" Value="Comic Books" />
                                    <asp:ListItem Text="Self Help" Value="Self Help" />
                                    <asp:ListItem Text="Motivation" Value="Motivation" />
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
                </div>   <%--End Genre row  --%>
                  <div class="row  text-left">                    
                      <div class="col-md-4">
                          <label for="Edition">Edition:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox12" runat="server"
                                      placeholder="Edition"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-md-4">
                          <label for="costperunit">Book Cost(per unit):</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox13" runat="server"
                                   placeholder="costperunit" TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                      <div class="col-md-4">
                          <label for="pages">Pages:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox5" runat="server"
                                   placeholder="pages"  TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%--End pages row  --%>
                  <div class="row  text-left">                    
                      <div class="col-md-4">
                          <label for="ActualStock">Actual Stock:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox6" runat="server"
                                      placeholder="ActualStock"   TextMode="Number"></></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-md-4">
                          <label for="CurrentStock">Current Stock:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox7" runat="server"
                                   placeholder="CurrentStock" ReadOnly="true"  TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                      <div class="col-md-4">
                          <label for="IssuedBooks">Issued Books:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox8" runat="server"
                                   placeholder="IssuedBooks"  ReadOnly="true"  TextMode="Number"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%--End stock row  --%>

                  <div class="row  text-left">
                      <div class="col-12">
                          <label for="BookDescription">Book Description:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server"
                                      placeholder="BookDescription"  TextMode="MultiLine" Rows="4"></asp:TextBox>  
                         </div>
                      </div>
                       
                      </div>
                </div>   <%--End BookDescription row  --%>  
                   &nbsp;                                       
                      <div class="row ">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                    &nbsp;
                         <div class="row m-2">
                             
                             <div class="col-md-4">
                                 <asp:Button class="btn btn-lg btn-block btn-success" ID="Button1" runat="server" Text="Add" />
                             </div> 
                             <div class="col-md-4">
                                 <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button2" runat="server" Text="Update" />
                             </div> 
                             <div class="col-md-4">
                                 <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button3" runat="server" Text="Delete" />
                             </div> 
                            
                         </div>
                  &nbsp;
                    </div>
                 </div>
            
          
          <div class="col-md-7">
             <div class="card">            
               <div class="card-body text-center">
                    <img class="img-top d-inline-block rounded-circle" src="img/bookinventory2.jpg" width="100" height="100" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Book Inventory List</h3>                         
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
                      </div> <%-- User grid and info card --%>
                   </div>   <%-- User row card --%>            
                 </div>   
               &nbsp;                                 
             <div class="row">
                      <div>
                          <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:15px;padding:10px;" >
                             <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                     </div>
             </div><%-- End return home row --%>               
       </div>     <%-- End Container-fluid card --%>
</asp:Content>
