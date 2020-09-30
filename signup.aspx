<%@ Page Title="SignUpPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="OnlineLMS.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="features">
            <div class="row">
                <div class="col">
                    <img src ="img/signupbanner.jpg" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--End country row --%>
     <br />
    <section id="bannersignup" class="bg-light">
        <div class="row padding" style="background-color:darkmagenta;margin:auto;">       
        <div class="col-4 mx-auto">
              <img src="img/bridal-free-registration.png" class="img-fluid d-inline-block w-25" height="160"/>
        </div>
        <div class="col-4 mx-auto">
              <img src="img/SignUp-Share-Image-1200x628-Facebook..jpg"  class="img-fluid d-inline-block w-25" height="160"/>
       </div>
          <div class="col-4 mx-auto">
              <img src="img/signupHere.jpg"   class="img-fluid d-inline-block w-25"  height="120"/>
       </div>
        </div>
     </section>
    <br />
     <%-- Name of the 9 province in South Africa --%>
    <div class="container">
        <div class="row padding">
        <div class="col-md-8 mx-auto">
            <div class="card col-auto">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/signup3.png"  width="60" height="60" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">User Registration</h3>             
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  <%-- Name of the States in Nigeria --%>
                  <div class="row padding text-left">
                      <div class="col-md-6">
                          <label for="name">Name & Surname:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtSignupName" runat="server"
                               placeholder="name"></asp:TextBox>  
                            </div>
                      </div>
                      <div class="col-md-6">
                          <label for="dateofbirth">Date Of Birth:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="txtSignupDob" runat="server"
                                      placeholder="dateofbirth" TextMode="Date"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%--End city row--%>
                   <div class="row padding text-left">
                      <div class="col-md-6">
                          <label for="phonenumber">Contact Number:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtSignupContactNum" runat="server"
                               placeholder="phone number" TextMode="Number"></asp:TextBox>  
                            </div>
                      </div>
                      <div class="col-md-6">
                          <label for="e-mail">e-mail:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="txtSignupEmail" runat="server"
                                      placeholder="e-mail" TextMode="Email"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%--End Address row --%>
                    <div class="row padding text-left">
                      <div class="col">
                          <label for="country">Country:</label>
                           <div class="form-group">
                               <asp:DropDownList Cssclass="form-control" ID="DropDownListCountry" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                   <%-- Name of the country(Nigeria & South Africa )--%>
                                   <asp:ListItem Text="Nigeria" Value="Nigeria" />
                                   <asp:ListItem Text="South Africa"  Value="South Africa" />
                                   
                               </asp:DropDownList>
                            </div>
                      </div>
                    </div> <%--End section loginheader row --%>
                   <div class="row padding text-left">
                      <div class="col-md-4">
                          <label for="state">State/Province:</label>
                           <div class="form-group">
                               <asp:DropDownList CssClass="form-control" ID="DropDownListState" runat="server">
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
                          <label for="city">City/Town:</label>
                             <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="txtSignupCity" runat="server"
                                      placeholder="city"></asp:TextBox>  
                         </div>
                      </div>    
                       <div class="col-md-4">
                          <label for="zipcode">Zip Code:</label>
                             <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="txtSignupZipCode" runat="server"
                                      placeholder="zipcode" TextMode="Number"></asp:TextBox>  
                         </div>
                      </div>         
                </div>   <%--End UserLogin Details row --%>
                   <div class="row padding text-left">
                      <div class="col">
                          <label for="address">Physical/Residential Address:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtSignupAddress" runat="server"
                               placeholder="address" TextMode="MultiLine" Rows="2"></asp:TextBox>  
                            </div>
                      </div>                    
                </div>   <%--End Address row --%>
                   
                      <section id="loginDetails">
                             <div class="container row text-center"style="margin:auto;">
                                <div class="col text-white rounded" style="background-color:darkmagenta;">
                                <h4 class="my-3"><span class="badge badge-pill badge-dark text-center">Login Credentials(Create your unique login details Here):</span></h4>                      
                               </div>
                             </div>
                    </section>  <%--End section loginheader row --%>
                   &nbsp;
                           <div class="row padding text-left">
                              <div class="col-md-6">
                                  <label for="username">Username:</label>
                                   <div class="form-group">
                                   <asp:TextBox  CssClass="form-control" ID="txtUsername" runat="server"
                                       placeholder="username"></asp:TextBox>  
                                    </div>
                              </div>
                              <div class="col-md-6">
                                  <label for="password">Password:</label>
                                     <div class="form-group">
                                         <asp:TextBox  CssClass="form-control" ID="txtPassword" runat="server"
                                              placeholder="password" TextMode="Password"></asp:TextBox>  
                                 </div>
                              </div>                       
                           </div>   <%--End UserLogin Details row --%>
                        
                                <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                           &nbsp;
                         <div class="form-group mx-auto col-md-6">                      
                             <asp:Button CssClass="btn btn-secondary btn-block btn-lg" ID="SignUp" runat="server" Text="Sign-Up" OnClick="SignUp_Click" />
                        </div>
                      </div>
                     </div>
                  </div>
                 </div>
                &nbsp;
                <div class="col-6 text-center">
                   <a class="btn btn-primary rounded" href="homepage.aspx" role="button" >
                        <img class="img-fluid rounded-circle" src="img/return%20to%20homepage2.jpg" width="100" height="200"></a>            
              </div>
                             
            </div>
</asp:Content>
