<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterpage.Master" AutoEventWireup="true" CodeBehind="StudentStress.aspx.cs" Inherits="educationalProject.StudentStress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
    <!-- Start contact Area -->  
    <div id="about" class="about-area area-padding">
   <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="section-headline text-center">
            <h2>Stress Prediction - Enter Parameters</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- single-well start-->
       
        <!-- single-well end-->
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="well-middle">
            <div class="single-well">
              <a href="#">
                <h4 class="sec-head">Student Parameters</h4>
              </a>
              
             

               

                <div class="form-group">
                <p>Enter Gender</p>

                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">male</asp:ListItem>
                        <asp:ListItem Value="2">female</asp:ListItem>
                    </asp:DropDownList>
                
                    <br />
                    <br />
                <h6>Gender: 1- male , 2 - female</h6>
                </div>
                <div class="form-group">
                 <p>Enter Financial_Issues</p>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">no</asp:ListItem>
                        <asp:ListItem Value="1">yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                 <br />
                   
                 <h6>Financial_Issues: 0- No , 1 - Yes</h6>
                </div>

                 <div class="form-group">
                  <p>Enter Family_Issues</p>
                     <asp:DropDownList ID="DropDownList3" runat="server">
                         <asp:ListItem Value="0">no</asp:ListItem>
                         <asp:ListItem Value="1">yes</asp:ListItem>
                     </asp:DropDownList>
                <br />
                   
                     <br />

                         <h6>Family_Issues: 0- No , 1 - Yes</h6>
                </div>

                 <div class="form-group">
                  <p>Enter Study_Hours</p>
                     <asp:DropDownList ID="DropDownList4" runat="server">
                         <asp:ListItem Value="1">1</asp:ListItem>
                         <asp:ListItem Value="2">2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>&gt;4</asp:ListItem>
                     </asp:DropDownList>
                <br />
                   
                     <br />
                         <h6>Study_Hours: Numeric 1,2,3 ....</h6>
                </div>

                 <div class="form-group">
                  <p>Enter Teaching_Method</p>
                     <asp:DropDownList ID="DropDownList5" runat="server">
                         <asp:ListItem Value="1">fair</asp:ListItem>
                         <asp:ListItem Value="2">not good</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                <br />
                   
                        <h6>Teaching_Method: 1- Fair / 2- Not Good.</h6>
                </div>

                 <div class="form-group">
                  <p>Enter Health_Issues</p>
                     <asp:DropDownList ID="DropDownList6" runat="server">
                         <asp:ListItem Value="0">no</asp:ListItem>
                         <asp:ListItem Value="1">yes</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                <br />
                   
                        <h6>Health_Issues: 0- No , 1 - Yes</h6>
                </div>

                 <div class="form-group">
                  <p>Enter Partiality_Fix</p>
                     <asp:DropDownList ID="DropDownList7" runat="server">
                         <asp:ListItem Value="0">no</asp:ListItem>
                         <asp:ListItem Value="1">yes</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                 <br />

                        <h6>Partiality_Fix: 0- No , 1 - Yes</h6>
                </div>

                <div class="form-group">
                  <p>Enter Exam_Schedule</p>
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem Value="1">Monthly</asp:ListItem>
                        <asp:ListItem Value="2">Half</asp:ListItem>
                        <asp:ListItem Value="3">yearly</asp:ListItem>
                        <asp:ListItem Value="4">Annual</asp:ListItem>
                         <asp:ListItem Value="5">Slip Test</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                 <br />

                        <h6>Exam_Schedule: 1-Monthly/ 2-Half/ 3-yearly/ 4-Annual/ 5-Slip Test/</h6>
                </div>

                <div class="form-group">
                  <p>Enter Friends_Issue</p>
                    <asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem Value="0">no</asp:ListItem>
                        <asp:ListItem Value="1">yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                 <br />

                        <h6>Friends_Issue: 0- No , 1 - Yes</h6>
                </div>

                <div class="form-group">
                  <p>Enter Pressure</p>
                    <asp:DropDownList ID="DropDownList10" runat="server">
                        <asp:ListItem Value="0">no</asp:ListItem>
                        <asp:ListItem Value="1">yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                 <br />
                        <h6>Pressure: 0- No , 1 - Yes</h6>
                </div>

                <div class="form-group">
                  <p>Enter Regular</p>
                  <asp:DropDownList ID="DropDownList11" runat="server">
                        <asp:ListItem Value="1">no</asp:ListItem>
                        <asp:ListItem Value="2">yes</asp:ListItem>
                    </asp:DropDownList>
                     <br />
                 <br />
                         <h6>Regular: 1- No , 2 - Yes</h6>
                </div>

                <div class="form-group">
                  <p>Enter Interaction</p>
                 <asp:DropDownList ID="DropDownList12" runat="server">
                        <asp:ListItem Value="1">Excellent</asp:ListItem>
                        <asp:ListItem Value="2">Good</asp:ListItem>
                         <asp:ListItem Value="3">Average</asp:ListItem>
                          <asp:ListItem Value="4">Poor</asp:ListItem>
                    </asp:DropDownList>
                 <br />
                    <br />
                          <h6>Interaction: 1- Excellent , 2 - Good, 3 - Average, 4 - Poor</h6>
                </div>

     <div>           
    <asp:Button ID="btnSubmit" runat="server" Text="Predict Stress Level" 
             ValidationGroup="a" onclick="btnSubmit_Click" Height="50px" 
              />
               <br />
               <br />
                <h4>Outcome: 0 - Normal, 1 - 25% Stress Level, 2 - 50% Stress level, 3 - 100% Stress Level</h4>
         <br />
         <asp:Label ID="lblResult" runat="server"></asp:Label>
               </div>
             


            </div>
          </div>
        </div>
        <!-- End col-->
      </div>
    </div>
    </div>
  <!-- End Contact Area -->


    </asp:Panel>




</asp:Content>
