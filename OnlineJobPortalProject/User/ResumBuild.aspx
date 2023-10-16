﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ResumBuild.aspx.cs" Inherits="OnlineJobPortalProject.User.ResumBuild" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <section>
    <div class="container pt-50 pt-40"> <%--padding top and button--%>
        <div class="row">
            <div class="col-12 pb-20">
                <asp:Label ID="LblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="col-12">
                <h2 class="contact-title text-center">Build Resume</h2>
            </div>
            <div class="col-lg-12">
                <div class="form-contact contact_form">
                    <div class="row">
                        <div class="col-12">
                            <h6>Personal Information</h6>
                        </div>
                         <div class="col-md-6 col-sm-12">
     <div class="form-group">
         <label>Full Name</label>
         <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter Full Name" required></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error input value!Please enter characters" ForeColor="Red" Display="Dynamic"
             SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtFullName"></asp:RegularExpressionValidator>
     </div>
 </div>
                        <div class="col-md-6 col-sm-12">

                            <div class="form-group"> 

                                <label>Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter username" required></asp:TextBox>
                    </div>
                        </div>

                           <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Mobile Number</label>
                                <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" placeholder="Enter Mobile Number" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone number must be 8 numbers" ForeColor="Red" Display="Dynamic"
                                    SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[0-9]{8}$" ControlToValidate="txtMobileNumber"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" required TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                       

                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">

                                <label>Country</label> 
                                <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
   AutoPostBack="true" AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
    <asp:ListItem Value="0">Select Country</asp:ListItem>
   
</asp:DropDownList>
                               

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Country is Required"
                                    ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CountryName] FROM [country]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="col-12 pt-4">
                            <h6>Education/Resume Information</h6>
                        </div>
                       
                      <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                            <label>University</label>
                            <asp:TextBox ID="txtUniversity" runat="server" CssClass="form-control" placeholder="Ex: Lebanese University" required ></asp:TextBox>
                        </div>
                       </div>
                      <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                             <label> Major </label>
                             <asp:TextBox ID="txtMajor" runat="server" CssClass="form-control" placeholder="Ex: MIS, CS.." required ></asp:TextBox>
                             </div>
                             </div>         

                         <div class="col-md-6 col-sm-12">
                      <div class="form-group">
                     <label>Graduation Grade or GPA </label>
                      <asp:TextBox ID="txtGraduation" runat="server" CssClass="form-control" placeholder="Ex: BA, BS 3.4" required ></asp:TextBox>
                      </div>
                       </div> 
                            <div class="col-md-6 col-sm-12">
 <div class="form-group">
<label>Masters Degree</label>
 <asp:TextBox ID="txtMasters" runat="server" CssClass="form-control" placeholder="Ex:M1 in Informatics, MBA in buisness"  ></asp:TextBox>
 </div>
  </div> 
                       <%-- 
                         <div class="col-md-6 col-sm-12">
       <div class="form-group">
        <label>PHD with Percentage/Grade</label>
        <asp:TextBox ID="txtPhd" runat="server" CssClass="form-control" placeholder="Ex:PHD with Grade" ></asp:TextBox>
        </div>
        </div>   --%>
                  <div class="col-md-6 col-sm-12">
<div class="form-group">
 <label>Job Profile/Works On</label>
 <asp:TextBox ID="txtWork" runat="server" CssClass="form-control" placeholder="Job Profile" required ></asp:TextBox>
 </div>
 </div>   
                  <div class="col-md-6 col-sm-12">
<div class="form-group">
 <label>Work Experience</label>
 <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Work Experience" ></asp:TextBox>
 </div>
 </div>   
                                          <div class="col-md-6 col-sm-12">
<div class="form-group">
 <label>Resume</label>
 <asp:FileUpload ID="fuResume" runat="server" CssClass="form-control pt-2" ToolTip=".doc, .docx, .pdf extension only" />
 </div>
 </div>   

                    </div>
                    
                    <div class="form-group mt-3">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button button-contactForm boxed-btn"
                            OnClick="btnUpdate_Click"  />

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</asp:Content>
