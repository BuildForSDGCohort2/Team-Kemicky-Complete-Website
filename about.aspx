<%@ Page Title="AboutUsPage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="OnlineLMS.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Type any other java script code here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section id="features">
            <div class="row">
                <div class="col-12">
                    <img src="img/AboutUsBanner.png" class="img d-block w-100"  height="180" />
            </div>
          </div>
     </section>    <%--section features --%>
     <br />
    <div class="container-fluid bg-white">
        <div class="row padding">
            <div class="col-12">
                <div class="card border-0">
                     <div class="card-body text-center">
                          <img class="img-top d-inline-block rounded-circle" src="img/About%20Us2.png" width="100" height="100" />
                         <h3 class="display-3 card-title" style="color:darkmagenta;">Our Mission</h3> 
                         <div class="row padding">
                             <div class="col">
                                  <hr class="dark-100" />
                             </div>        
                         </div>
                         <%-- Jumbotron Mission Statement --%> 
                         <div class="jumbotron jumbotron-fluid" style="background-color:aquamarine;">
                              <div class="container">
                                <h6 class="display-4"style="color:mediumvioletred">Inclusive Education Is Our First Priority At Royal College.</h6>
                                <p class="lead text-justify text-dark" >Royal College offers the opportunity for all the students to achieve their fullest academic,artistic and social potential.
                                This is accomplished through a rigorous educational program,which includes a challenging academic program, pre-conservatory studio work, practical experiences with cultural institutions, and intensive participation in community service.</p>
                              </div>
                          </div>
                         <div class="jumbotron jumbotron-fluid" style ="background-color:goldenrod;">
                              <div class="container">
                                <h6 class="display-4"style="color:mediumvioletred">Our Vision.</h6>
                                <p class="lead text-justify text-dark">Inspired by our unique way of teaching incorporated with real-world pratical and internship,Royal College will provide the highest quality of program,curriculums and
                                    study-materials (e-books,online and offline) possible to ensure we produce and mould our students to become Leaders and Pionneers positivity in the society. 
                                </p>
                              </div>
                          </div>
                         <div class="jumbotron jumbotron-fluid bg-light">
                              <div class="container">
                                <h6 class="display-4" style="color:mediumvioletred">Teaching Mode.</h6>
                                <p class="lead text-justify">We teach Online and On-Campus, At Royal College for the safety of our staff and students we run a hybrid teaching mode.
                                 </p>
                              </div>
                          </div>
                         &nbsp;                                       
                          <div class="row padding">
                                  <div class="col">
                                       <hr class="dark-100" />
                                </div>
                          </div>
                      &nbsp;
                     </div>
                </div>
            </div>
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






        
                        
             
                                   
                  
                      
                 