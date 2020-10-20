<%@ Page Title="UserProfilePage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="OnlineLMS.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
     <%--My Custom JavaScript Code --%>
    <script type="text/javascript">   
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();       
       });
    </script>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="features">
            <div class="row">
                <div class="col-12">
                    <img  src="img/userprofileBanner.jpg" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%-- User grid and info card --%>
     <br />
      <%-- Name of the 9 province in South Africa --%>
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-6">
            <div class="card border-0">            
              <div class="card-body text-center" style="border-right:ridge;">
                <img class="img-top d-inline-block rounded-circle" src="img/userProfile.png" width="70" height="70" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Profile Details</h3>      
                  <span>Account status-</span>
                  <asp:Label CssClass="badge badge-pill badge-dark" ID="Status" runat="server" Text="Status"></asp:Label>
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%-- Name of the States in Nigeria --%>
                  <div class="row padding text-left">
                      <div class="col-md-6">
                          <span><i><img src="img/NameCard2.png"  width="30" height="30"></i></span><label for="name">Name & Surname:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="UserName" runat="server"></asp:TextBox>  
                            </div>
                      </div>
                      <div class="col-md-6">
                          <span><i><img class="rounded-circle" src="img/CalenderDOB.png" width="30" height ="30"></i></span><label for="dateofbirth">DOB:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="UserDOB" runat="server" placeholder="dateofbirth" TextMode="Date"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%-- User row card --%>
                   <div class="row padding text-left">
                      <div class="col-md-6">
                          <span><i><img src="img/phoneIcon.png"  width="25" height="30"></i></span><label for="phonenumber">Contact No:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="UserNum" runat="server" TextMode="Number"></asp:TextBox>  
                            </div>
                      </div>
                      <div class="col-md-6">
                          <span><i><img class="rounded-circle" src="img/Email.png"  width="30" height="30"></i></span><label for="e-mail">e-mail:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="UserEmail" runat="server" TextMode="Email"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%-- End Container-fluid card --%>
                    <div class="row padding text-left">
                      <div class="col">
                          <span><i><img class="rounded-circle" src="img/countryImage.jpg"  width="30" height="30"></i></span><label for="country">Country:</label>
                           <div class="form-group">
                               <asp:DropDownList Cssclass="form-control" ID="DropDownCountry" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                   <%-- Name of the country(Nigeria & South Africa )--%>
                                   <asp:ListItem Text="Nigeria" Value="Nigeria" />
                                   <asp:ListItem Text="South Africa"  Value="South Africa" />
                                   
                               </asp:DropDownList>
                            </div>
                      </div>
                    </div> <%-- User grid and info card --%>
                   <div class="row padding text-left">
                      <div class="col-md-4">
                          <span><i><img class="rounded-circle" src="img/StateImage.jpg" width="30" height ="30"></i></span><label for="state">State/Province:</label>
                           <div class="form-group">
                               <asp:DropDownList CssClass="form-control" ID="DropDownState" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                   <%-- Name of the 9 province in South Africa --%>
                                   <asp:ListItem Text="Eastern Cape" Value="Eastern Cape"/>
                                   <asp:ListItem Text="Free State"  Value="Free State"/>
                                   <asp:ListItem Text="Gauteng" Value="Gauteng"/>
                                   <asp:ListItem Text="Kwazulu Natal" Value="Kwazulu Natal"/>
                                   <asp:ListItem Text="Limpopo" Value="Limpopo" />
                                   <asp:ListItem Text="Northern Cape" Value="Northern Cape"/>
                                   <asp:ListItem Text="North West"  Value="North West"/>
                                   <asp:ListItem Text="Mpumalanga" Value="Mpumalanga" />
                                   <asp:ListItem Text="Western Cape" Value="Western Cape" />
                                   <%-- Name of the States in Nigeria --%>
                                    <asp:ListItem Text="Akwa Ibom" Value="Akwa Ibom"/>
                                    <asp:ListItem Text="Anambra" Value="Anambra" />
                                    <asp:ListItem Text="Bauchi" Value="Bauchi" />
                                    <asp:ListItem Text="Bayelsa" Value="Bayelsa" />
                                    <asp:ListItem Text="Benue" Value="Benue" />
                                    <asp:ListItem Text="Borno" Value="Borno" />
                                    <asp:ListItem Text="Cross River" Value="Cross River"/>
                                    <asp:ListItem Text="Delta" Value="Delta" />
                                    <asp:ListItem Text="Ebonyi" Value="Ebonyi" />
                                    <asp:ListItem Text="Edo" Value="Edo" />
                                    <asp:ListItem Text="Ekiti" Value="Ekiti" />
                                    <asp:ListItem Text="Enugu" Value="Enugu" />
                                    <asp:ListItem Text="Gombe" Value="Gombe" />
                                    <asp:ListItem Text="Imo" Value="Imo" />
                                    <asp:ListItem Text="Jigawa" Value="Jigawa" />
                                    <asp:ListItem Text="Kaduna" Value="Kaduna" />
                                    <asp:ListItem Text="Kano" Value="Kano" />
                                    <asp:ListItem Text="Katsina" Value="Katsina" />
                                    <asp:ListItem Text="Kebbi" Value="Kebbi" />
                                    <asp:ListItem Text="Kogi" Value="Kogi" />
                                    <asp:ListItem Text="Kwara" Value="Kwara" />
                                    <asp:ListItem Text="Lagos" Value="Lagos" />
                                    <asp:ListItem Text="Nasarawa" Value="Nasarawa"/>
                                    <asp:ListItem Text="Niger" Value="Niger" />
                                    <asp:ListItem Text="Ogun" Value="Ogun" />
                                    <asp:ListItem Text="Ondo" Value="Ondo" />
                                    <asp:ListItem Text="Osun" Value="Osun" />
                                    <asp:ListItem Text="Oyo" Value="Oyo" />
                                    <asp:ListItem Text="Plateau" Value="Plateau" />
                                    <asp:ListItem Text="Rivers" Value="Rivers" />
                                    <asp:ListItem Text="Sokoto" Value="Sokoto" />
                                    <asp:ListItem Text="Taraba" Value="Taraba" />
                                    <asp:ListItem Text="Yobe" Value="Yobe"/>
                                    <asp:ListItem Text="Zamfara" Value="Zamfara"/>

                               </asp:DropDownList>
                            </div>
                      </div>
                      <div class="col-md-4">
                          <span><i><img class="rounded-circle" src="img/City%20Image.jpg"  width="30" height="30"></i></span><label for="city">City/Town:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="UserCity" runat="server"></asp:TextBox>  
                         </div>
                      </div>    
                       <div class="col-md-4">
                          <span><i><img src="img/zip.png" width="30" height ="30"></i></span><label for="zipcode">Zip Code:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="UserZipcode" runat="server" TextMode="Number"></asp:TextBox>  
                         </div>
                      </div>         
                </div>   <%-- User row card --%>
                   <div class="row padding text-left">
                      <div class="col">
                          <span><i><img src="img/locationAddress.png" width="30" height ="30"></i></span><label for="address">Physical/Residential Address:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="UserAddress" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>  
                            </div>
                      </div>                    
                </div>   <%-- End Container-fluid card --%>
                   
                      <section id="loginDetails">
                             <div class="container row text-center"style="margin:auto;">
                                <div class="col text-white rounded" style="background-color:cadetblue;">
                                <h4 class="my-3"><span class="badge badge-pill badge-dark text-center">Login Credentials(Login details):</span></h4>                      
                               </div>
                             </div>
                    </section>  <%-- User grid and info card --%>
                  &nbsp;
                           <div class="row padding text-left">
                              <div class="col-md-4">
                                   <span><i><img src="img/Namecard.png" width="30" height="30"></i></span><label for="username">Username:</label>
                                   <div class="form-group">
                                   <asp:TextBox  CssClass="form-control" ID="Uname" runat="server" ReadOnly="true"></asp:TextBox>  
                                    </div>
                              </div>
                              <div class="col-md-4">
                                  <span><i><img class="rounded-circle" src="img/password.png" width="30" height="30"></i></span><label for="password">Password:</label>
                                     <div class="form-group">
                                         <asp:TextBox  CssClass="form-control" ID="Pword" runat="server" TextMode="Password" ReadOnly="true"></asp:TextBox>  
                                 </div>
                              </div> 
                                <div class="col-md-4">
                                  <span><i><img class="rounded-circle" src="img/users_password_formlogin%20pix2.png" width="30" height="30"></i></span><label for="new password">New Password:</label>
                                     <div class="form-group">
                                         <asp:TextBox  CssClass="form-control" ID="NewPword" runat="server" TextMode="Password"></asp:TextBox>  
                                 </div>
                              </div> 
                           </div>   <%-- User row card --%>
                        
                                <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                           &nbsp;
                         <div class="form-group mx-auto col-md-6">
                             <asp:Button CssClass="btn btn-warning btn-block btn-lg" ID="BtnUserUpdate" runat="server" Text="Update Details" OnClick="BtnUserUpdate_Click" />           
                        </div>
                      </div>
                     </div>
                  </div>
             <div class="col-md-6">
                 <div class="card border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/reading%20and%20%20studying.gif"  width="60" height="60" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">List Of Borrowed Books</h3>     
                  <asp:Label CssClass="lead badge badge-pill badge-dark" ID="Label2" runat="server" Text="Books Issue And Due Date Details:">      
                  </asp:Label>
                  <img class="img-top d-inline-block rounded" src="img/info.jpg"width="60" height="20">
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%-- End Container-fluid card --%>  
                  <div class="row padding">
                      <div class="col">
                       <div class="col-12">
                            <asp:GridView CssClass="table table-responsive table-striped table-bordered" ID="GridUserProfile" runat="server" OnRowDataBound="GridUserProfile_RowDataBound" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White"/>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#FF6699"  ForeColor="Black" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                      </div>
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
  <%-- Home button --%>
     &nbsp;                                 
   <div class="row padding">
       <div class="col-6">
          <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:15px;padding:10px;" >
         <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
      </div>
 </div><%-- End return home row --%> 
                
</asp:Content>
