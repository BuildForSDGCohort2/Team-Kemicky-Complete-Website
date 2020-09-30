<%@ Page Title="MemberManagementPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="membermanagementpage.aspx.cs" Inherits="OnlineLMS.membermanagementpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="features ">
            <div class="row bg-white">
                <div class="col">
                    <img src="img/membershipBanner2.png" class="img d-block w-75"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <%-- User profile Page card --%>
    <div class="container-fluid">
        <div class="row padding">
        <div class="col-md-6">
            <div class="card">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/member4.png" width="100" height="100" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Library Member Detail Manager</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%--Membership forms --%>
                  <div class="row padding text-left">
                     <div class="col-3">
                          <label for="MemberId">Memeber ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server"
                                   placeholder="MemberId"></asp:TextBox>  
                                   <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server">Go
                                   </asp:LinkButton>
                              </div>
                            </div>
                      </div>                     
                      <div class="col-5">
                          <label for="name">Name & Surname:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="name"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-4">
                          <label for="Status">Account Status:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control mr-1" ID="TextBox7" runat="server"
                                   placeholder="Status"  ReadOnly="true"></asp:TextBox>  
                                   <asp:LinkButton CssClass="btn btn-success mr-1" ID="LinkButton1" runat="server">
                                       <i><img class="img-fluid d-inline-block rounded" src="img/active.png" width="15" height="15"></i>
                                   </asp:LinkButton>
                                   <asp:LinkButton CssClass="btn btn-warning mr-1"  ID="LinkButton2" runat="server">
                                       <i><img class="img-fluid d-inline-block rounded" src="img/pending.png" width="20" height="20"></i>
                                   </asp:LinkButton>
                                   <asp:LinkButton CssClass="btn btn-danger mr-1"  ID="LinkButton3" runat="server">
                                       <i><img class="img-fluid d-inline-block rounded" src="img/inactive.png" width="20" height="20"></i>
                                   </asp:LinkButton>
                              </div>
                            </div>
                      </div>
                </div>   <%--End status row  --%>  
                  <div class="row padding text-left">
                     <div class="col-3">
                          <label for="dateofbirth">Date Of Birth:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox8" runat="server"
                                   placeholder="dateofbirth" ReadOnly="true" TextMode="Date"></asp:TextBox>  
                            </div>
                      </div>                     
                      <div class="col-4">
                          <label for="phonenumber">Phone Number:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox9" runat="server"
                                      placeholder="phone number" ReadOnly="true" TextMode="Number"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-5">
                          <label for="Email">e-mail:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control mr-1" ID="TextBox10" runat="server"
                                   placeholder="Email"  ReadOnly="true" TextMode="Email"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%--End Dateofbirth row  --%>
                  <div class="row padding text-left">
                     <div class="col-4">
                          <label for="state">State:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="TextBox11" runat="server"
                                   placeholder="state" ReadOnly="true"></asp:TextBox>  
                            </div>
                      </div>                     
                      <div class="col-4">
                          <label for="city">City:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox12" runat="server"
                                      placeholder="city" ReadOnly="true"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-4">
                          <label for="zipcode">Zip Code:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control mr-1" ID="TextBox13" runat="server"
                                   placeholder="zipcode"  ReadOnly="true"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%--End state row  --%>

                  <div class="row padding text-left">
                      <div class="col-12">
                          <label for="postaddress">Postal Address(Residential Address):</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server"
                                      placeholder="postal address" ReadOnly="true" TextMode="MultiLine" Rows="2"></asp:TextBox>  
                         </div>
                      </div>
                       
                      </div>
                </div>   <%--End postaladdress row  --%>  
                   &nbsp;                                       
                      <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                    &nbsp;
                         <div class="row padding">
                             <div class="col-8 mx-auto">
                                 <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button3" runat="server" Text="Delete Member permanently" />
                             </div>                            
                         </div>
                  &nbsp;
                    </div>
                 </div>
            
          
          <div class="col-md-6">
             <div class="card">            
               <div class="card-body text-center">
                    <img class="img-top d-inline-block rounded-circle" src="img/members2.png"  width="100" height="100" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Library Members List</h3>                         
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
             <div class="row padding">
                      <div>
                          <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:15px;padding:10px;" >
                             <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                     </div>
             </div><%-- End return home row --%>               
       </div>     <%-- End Container-fluid card --%>
</asp:Content>
