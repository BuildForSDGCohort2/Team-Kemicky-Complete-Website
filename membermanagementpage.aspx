<%@ Page Title="MemberManagementPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="membermanagementpage.aspx.cs" Inherits="OnlineLMS.membermanagementpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <%--My Custom Java Script--%>    
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
                   <h5 class="display-4" style ="vertical-align:text-bottom; text-align:center; margin:20px;"><span><img src="img/membershipBanner2.png" class="img-fluid img-top d-inline-flex rounded" style="float:left;" width="200" height="20" ></span>Member Management System: Admin Platform<span class="align-text-bottom"></span><span><img src="img/findAuthor.gif" class="img-fluid img-top d-inline-flex rounded" style="float:right;" width="200" height="40"></span></h5>                                           
                 </div>
             </div>
          </div>
     </section>
     <br />
    <%-- User profile Page card --%>
    <div class="container-fluid bg-white">
        <div class="row padding">
        <div class="col-md-6 col-sm-6">
            <div class="card border-0">            
              <div class="card-body text-center">
                <img class="img-top d-inline-block rounded-circle" src="img/member4.png" width="100" height="100" />
                <h3 class="my-3 card-title" style="color:darkmagenta;">Library Member Detail Manager</h3>                     
                  <div class="row padding">
                      <div class="col">
                          <hr class="dark-100" />
                      </div>
                  </div>
                  &nbsp;
                  <%--Membership forms --%>
                <div class="row padding text-left">
                  <div class="col-12">
                  <div class="row padding">
                        <div class="col-3">                       
                          <span><i><img src="img/Namecard.png" width="15" height="30"></i></span><label for="MemberId">ID:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="MembersID" runat="server"></asp:TextBox>  
                                   <asp:LinkButton CssClass="btn btn-sm btn-primary" ID="BtnMemberGO" runat="server" OnClick="BtnMemberGO_Click">Go
                                   </asp:LinkButton>
                              </div>
                            </div>
                      </div>                     
                        <div class="col-5">
                          <span><i><img  src="img/NameCard2.png"  width="15" height="30"></i></span><label for="name">Name & Surname:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="MembersName" runat="server"></asp:TextBox>  
                         </div>
                      </div>                    
                        <div class="col-4">
                         <span><i><img class="rounded-circle" src="img/Account%20Status.png" width="15" height="30" ></i></span><label for="Status">Status:</label>
                           <div class="form-group">
                            <div class="input-group">
                                  <asp:TextBox  CssClass="form-control" ID="MemberStatus" runat="server"  ReadOnly="true"></asp:TextBox>  
                                   <asp:LinkButton CssClass="btn btn-sm btn-success mr-1" ID="BtnActive" runat="server" OnClick="BtnActive_Click">
                                       <i><img class="img-fluid d-inline-block rounded" src="img/active.png" width="10" height="10"></i>
                                   </asp:LinkButton>
                                   <asp:LinkButton CssClass="btn btn-sm btn-warning mr-1"  ID="BtnPending" runat="server" OnClick="BtnPending_Click">
                                       <i><img class="img-fluid d-inline-block rounded" src="img/pending.png" width="10" height="10"></i>
                                   </asp:LinkButton>
                                   <asp:LinkButton CssClass="btn btn-sm btn-danger mr-1"  ID="BtnInActive" runat="server" OnClick="BtnInActive_Click">
                                       <i><img class="img-fluid d-inline-block rounded" src="img/inactive.png" width="10" height="10"></i>
                                   </asp:LinkButton>
                              </div>
                            </div>
                      </div>  
                    </div>
                </div>
               </div><%--End status row  --%>  
                  &nbsp;
                  <div class="row padding text-left">
                     <div class="col-4">
                          <span><i><img  class="rounded-circle" src="img/CalenderDOB.png"  width="25" height="30"></i></span><label for="dateofbirth">DOB:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="MemberDateBirth" runat="server" ReadOnly="true" TextMode="Date"></asp:TextBox>  
                            </div>
                      </div>                     
                      <div class="col-4">
                         <span><i><img src="img/phoneIcon.png"  width="25" height="30"></i></span><label for="phonenumber">Phone No:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="MemberPhoneNumber" runat="server" ReadOnly="true" TextMode="Number"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-4">
                         <span><i><img class="rounded-circle" src="img/Email.png"  width="30" height="30"></i></span><label for="Email">e-mail:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control mr-1" ID="MemberEmail" runat="server" ReadOnly="true" TextMode="Email"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%--End Dateofbirth row  --%>
                  &nbsp;
                  <div class="row padding text-left">
                     <div class="col-4">
                        <span><i><img class="rounded-circle" src="img/StateImage.jpg" width="30" height ="30"></i></span><label for="state">State:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="MemberState" runat="server" ReadOnly="true"></asp:TextBox>  
                            </div>
                      </div>                     
                      <div class="col-4">
                          <span><i><img src="img/City%20Image.jpg" width="30" height ="30"></i></span><label for="city">City:</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="MemberCity" runat="server" ReadOnly="true"></asp:TextBox>  
                         </div>
                      </div>                    
                      <div class="col-4">
                          <span><i><img src="img/zip.png" width="30" height ="30"></i></span><label for="zipcode">Zip Code:</label>
                           <div class="form-group">
                                  <asp:TextBox  CssClass="form-control" ID="MemberZipCode" runat="server" ReadOnly="true"></asp:TextBox> 
                            </div>
                      </div>
                </div>   <%--End state row  --%>
                  &nbsp;
                  <div class="row padding text-left">
                      <div class="col-12">
                       <span><i><img src="img/locationAddress.png" width="30" height ="30"></i></span><label for="postaddress">Postal Address(Residential Address):</label>
                             <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="MemberPostAddress" runat="server" ReadOnly="true" TextMode="MultiLine" Rows="2"></asp:TextBox>  
                         </div>
                      </div>
                    </div><%--End postaladdress row  --%> 
                 
                   &nbsp;                                       
                      <div class="row padding">
                                  <div class="col">
                                      <hr class="dark-100" />
                                  </div>
                             </div>
                    &nbsp;
                         <div class="row padding">
                             <div class="col-8 mx-auto">
                                 <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="BtnDeleteMemberPermanent" runat="server" Text="Delete Member permanently" OnClick="BtnDeleteMemberPermanent_Click" />
                             </div>                            
                         </div>
                  &nbsp;
              </div>
             &nbsp;
           <%-- Home Button --%>
                <div class="row">  
                   <div class="col-6">
                       <a class="btn btn-primary rounded" href="homepage.aspx" role="button" style="float:left; margin-left:2px;padding:10px;" >
                       <img class="img-fluid rounded-circle" src="img/home_button.png"  width="100" height="60"></a>            
                   </div>
                <br />
               </div> <%-- Home Button --%>
           </div> <%-- card body --%>
           </div><%-- table Card2 --%>
          <div class="col-md-6 col-sm-6 ">
             <div class="card border-0">            
               <div class="card-body text-center" style="border-left:ridge;">
                    <img class="img-top d-inline-block rounded-circle" src="img/members2.png"  width="100" height="100" />
                    <h3 class="my-3 card-title" style="color:darkmagenta;">Library Members List</h3>                         
                  <div class="row padding">
                  <div class="col-12">
                          <hr class="dark-300"/>
                      </div>
                  </div>
                  <%--Books issued Profile forms --%>
                  
                 <br />
                      <div class="col-12">
                              <asp:SqlDataSource ID="SqlDataSourceMemberManagement" runat="server" ConnectionString="<%$ ConnectionStrings:elmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl_member]"></asp:SqlDataSource>
                               <asp:GridView CssClass="table table-responsive table-striped table-bordered"   ID="GridMemberManagement" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSourceMemberManagement" BorderStyle="None" Font-Size="Small" ForeColor="Black" HorizontalAlign="Justify" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" GridLines="Vertical">
                                   <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" >
                                  <HeaderStyle Font-Size="Small" HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="full_name" HeaderText="Name_Surname" SortExpression="full_name" >
                                  <HeaderStyle HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="account_status" HeaderText="Acct_Status" SortExpression="account_status" >
                                  <HeaderStyle HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="contact_no" HeaderText="Contact_No" SortExpression="contact_no" >
                                  <HeaderStyle HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
                                  <HeaderStyle HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                                  <HeaderStyle HorizontalAlign="Justify" />
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
                                  <ItemStyle HorizontalAlign="Justify" />
                                  </asp:BoundField>
                            </Columns>
                                   <EditRowStyle BorderStyle="None" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                   <FooterStyle BackColor="#CCCC99" />
                                   <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#6B696B" Font-Bold="True" ForeColor="White"/>
                                   <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                   <RowStyle BackColor="#F7F7DE" BorderStyle="None" Font-Size="x-Small" HorizontalAlign="Justify" VerticalAlign="Middle"/>
                                   <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                   <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                   <SortedAscendingHeaderStyle BackColor="#848384" />
                                   <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                   <SortedDescendingHeaderStyle BackColor="#575357" />
                          </asp:GridView> 
                      </div>
                    <div class="row padding">
                        <div class="col-12">
                          <hr class="dark-100" />
                         </div>
                     </div>
                       &nbsp; 
                        </div>
                      </div> <%-- User grid and info card --%>
                   </div>   <%-- User row card --%>            
        </div>  
</div> <%-- End Container-fluid card --%>
</asp:Content>
