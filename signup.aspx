<%@ Page Title="SignUpPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="OnlineLMS.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="welcomehead">
        <br />
        <div class="container-fluid">
             <div class="row padding bg-white" style="color:darkmagenta; margin-top:10px;">
                 <div class="col-12">
                   <h5 class="display-4" style ="vertical-align:text-bottom; text-align:center; margin:20px;"><span><img src="img/Signupbannersticker.png" class="img-fluid img-top d-inline-flex rounded" style="float:left;" width="200" height="20" ></span><span class="align-text-bottom">Sign Up And Join Our Amazing Reader's Club</span><span><img src="img/view%20books%20banner2.png" class="img-fluid img-top d-inline-flex rounded" style="float:right;" width="200" height="40"></span></h5>                                           
                 </div>
             </div>
          </div>
     </section>
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
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-8 mx-auto">
            <div class="card col-auto border-0">            
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
                           <span><i><img src="img/NameCard2.png"  width="30" height="30"></i></span><label for="name">Name & Surname:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtSignupName" runat="server"></asp:TextBox>  
                            </div>
                      </div>
                      <div class="col-md-6">
                          <span><i><img class="rounded-circle" src="img/CalenderDOB.png" width="30" height ="30"></i></span><label for="dateofbirth">DOB:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="txtSignupDob" runat="server" placeholder="dateofbirth" TextMode="Date"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%--End city row--%>
                   <div class="row padding text-left">
                      <div class="col-md-6">
                          <span><i><img src="img/phoneIcon.png"  width="25" height="30"></i></span><label for="phonenumber">Contact No:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtSignupContactNum" runat="server" TextMode="Number"></asp:TextBox>  
                            </div>
                      </div>
                      <div class="col-md-6">
                          <span><i><img class="rounded-circle" src="img/Email.png"  width="30" height="30"></i></span><label for="e-mail">e-mail:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="txtSignupEmail" runat="server" TextMode="Email"></asp:TextBox>  
                         </div>
                      </div>                       
                </div>   <%--End Address row --%>
                    <div class="row padding text-left">
                      <div class="col">
                          <span><i><img class="rounded-circle" src="img/countryImage.jpg"  width="30" height="30"></i></span><label for="country">Country:</label>
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
                          <span><i><img class="rounded-circle" src="img/StateImage.jpg" width="30" height ="30"></i></span><label for="state">State/Province:</label>
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
                          <span><i><img class="rounded-circle" src="img/City%20Image.jpg"  width="30" height="30"></i></span><label for="city">City/Town:</label>
                             <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="txtSignupCity" runat="server"></asp:TextBox>  
                         </div>
                      </div>    
                       <div class="col-md-4">
                          <span><i><img src="img/zip.png" width="30" height ="30"></i></span><label for="zipcode">Zip Code:</label>
                             <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="txtSignupZipCode" runat="server" TextMode="Number"></asp:TextBox>  
                         </div>
                      </div>         
                </div>   <%--End UserLogin Details row --%>
                   <div class="row padding text-left">
                      <div class="col">
                           <span><i><img src="img/locationAddress.png" width="30" height ="30"></i></span><label for="address">Physical/Residential Address:</label>
                           <div class="form-group">
                           <asp:TextBox  CssClass="form-control" ID="txtSignupAddress" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>  
                            </div>
                      </div>                    
                </div>   <%--End Address row --%>
                   
                   <div class="container-fluid">
                       <div class="row text-white rounded text-center" style="background-color:darkmagenta;">
                        <div class="col">
                        <section id="loginDetails">
                                <h5 class="text-center"><span class="badge badge-pill badge-dark">Login Credentials(Create your unique login details Here):</span></h5>                      
                         </section> 
                        </div>
                       </div>  
                   </div><%--End section loginheader row --%>
                   &nbsp;
                           <div class="row padding text-left">
                              <div class="col-md-6">
                                  <span><i><img src="img/Namecard.png" width="30" height="30"></i></span><label for="username">Username:</label>
                                   <div class="form-group">
                                   <asp:TextBox  CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>  
                                    </div>
                              </div>
                              <div class="col-md-6">
                                  <span><i><img class="rounded-circle" src="img/password.png" width="30" height="30"></i></span><label for="password">Password:</label>
                                     <div class="form-group">
                                         <asp:TextBox  CssClass="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>  
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
                 <%-- Home button --%>
                     &nbsp;                                 
                   <div class="row padding">
                       <div class="col-sm-6">
                          <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:150px; padding:10px;" >
                         <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                      </div>
                 </div><%-- End return home row --%>     
            </div>
</asp:Content>
