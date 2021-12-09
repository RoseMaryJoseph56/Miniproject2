<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ONLINE__BUS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
     <div class="row">
     <div class="col-md-6 mx-auto">

             <div class="card">
               <div class="card-body">
                  <div class="row">
                   <div class="col">
                       <center>
                  <img width="120px" src="img/273-2738704_user-login-png-transparent-logo-twitter-blanco-png.png" />
                    </center>   
                 </div>
                 </div> 

                    <div class="row">
                   <div class="col">
                  <center>
                      <h3>Admin Login</h3>
                    </center>   
                </div>
                </div> 


                    <div class="row">
                   <div class="col">
                  <center>
                     <hr>
                    </center>   
                 </div>
                 </div> 
                            
                                 <div class="row">
                             <div class="column">
                                 
                              <!--    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                             </div> <br> -->
                                     
                                
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div> <br>
                                      
                                      <div class="form-group">
                                          <center>
                                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="102px" />
                                 </center> </div>  <br>
                               
            <!-- <center>   
                               <input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" />
                                     </center> -->
                                  </div>
                                           
                                  </div>
                             </div>
                                 </div>
            

         <a href="WebForm1.aspx"><< Back to Home </a><br><br>
          </div>
         </div>

      

</asp:Content>

