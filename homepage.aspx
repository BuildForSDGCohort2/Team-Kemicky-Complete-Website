<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/LmsSite.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OnlineLMS.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <%-- Type java scripts here --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">             
                  <section id="features">
                      <div class="row">
                       <div class="col">
                           <img src="img/homepageBanner.png" class="img d-block w-100"  height="180" />
                       </div>
                   </div>
                  </section>    <%--section features --%>
                <br />
                 <section id="info">
                      <div class="container row text-center"style="margin:auto;">
                          <div class="col-12">
                            <h3 class="my-3"><span class="badge badge-dark">Main Library Features:</span></h3>
                          </div>
                      </div>
                  </section>
                <div id="slides" class="carousel slide text-center" data-ride="carousel">
                  <ol class="carousel-indicators" >
                    <li data-target="#slides" data-slide-to="0" class="active"></li>
                    <li data-target="#slides" data-slide-to="1"></li>
                    <li data-target="#slides" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active" style="background-color:cadetblue;">
                      <img src="img/invent.gif"  class="d-block w-50"  style="margin:auto;" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h4 class="text-warning font-weight-bold" style="font-size:large;">Digital Book Inventory.</h4>
                        <p  class="text-danger" style="font-size:medium;">Book cataloging and records made easy.</p>
                      </div>
                    </div>
                    <div class="carousel-item" style="background-color:antiquewhite;">
                      <img src="img/search%20for%20books.gif" class="d-block w-50" style="margin:auto;" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h4 class="text-primary font-weight-bold" style="font-size:large;">Search For Rare Books And TextBooks.</h4>
                        <p  class="text-white" style="font-size:medium;">Find rare books,novels,project manuals,thesis and textbooks.</p>
                      </div>
                    </div>
                    <div class="carousel-item" style="background-color:mediumpurple;">
                        <img src="img/defaultList.gif"  class="d-block w-50" style="margin:auto;" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h4 class="text-primary font-weight-bold" style="font-size:large;">Library Book Defaulter List Records.</h4>
                        <p class="text-danger" style="font-size:medium;">Book tracking made easy by keeping records of all book lenders and defaulters.</p>
                      </div>
                    </div>
                  </div>   
                </div>
 </asp:Content>
