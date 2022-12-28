<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_27_12_2022.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .error {
            color: red !important;
        }

        .form-label {
            margin-right: 370px !important;
        }

        body {
            background-color: #0d6efd;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-light text-black" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <div class="mb-md-5 mt-md-4 pb-5">

                                <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                <p class="text-black-50 mb-5"></p>

                                <div class="form-outline form-white mb-4">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="typeEmailX" ForeColor="Red" ValidationGroup="G1" Display="Dynamic"></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="typeEmailX" CssClass="error" ValidationGroup="G1" Display="Dynamic"></asp:RegularExpressionValidator>&nbsp;<input runat="server" type="email" id="typeEmailX" placeholder="Email" class="form-control form-control-lg" />

                                </div>

                                <div class="form-outline form-white mb-4">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="required" ControlToValidate="typePasswordX" CssClass="error" ValidationGroup="G1"></asp:RequiredFieldValidator>
                                    <input runat="server" type="password" id="typePasswordX" placeholder="Password" class="form-control form-control-lg" />


                                </div>

                                <p class="small mb-5 pb-lg-2"><a class="text-primary-50" href="#!">Forgot password?</a></p>

                                <asp:Button ID="Button1" runat="server" class="btn btn-outline-primary btn-lg px-5" Text="Login" ValidationGroup="G1" OnClick="Button1_Click" />

                                <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                    <a href="#!" class="text-primary"><i class="fab fa-facebook-f fa-lg"></i></a>
                                    <a href="#!" class="text-primary"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                    <a href="#!" class="text-primary"><i class="fab fa-google fa-lg"></i></a>
                                </div>

                            </div>

                            <div>
                                <p class="mb-0">
                                    Don't have an account? <a href="#!" class="text-dark-50 fw-bold">Sign Up</a>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br />
    <br />

    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-light text-black" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <div class="mb-md-5 mt-md-4 pb-5">

                                <h2 class="fw-bold mb-2 text-uppercase">SignUp</h2>
                                <p class="text-white-50 mb-5"></p>

                                <div class="form-outline form-white mb-4">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="typeEmailX2" CssClass="error" ValidationGroup="G2" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid email format" ControlToValidate="typeEmailX2" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="G2" Display="Dynamic"></asp:RegularExpressionValidator>
                                    <input runat="server" type="email" placeholder="Email" id="typeEmailX2" class="form-control form-control-lg" />

                                </div>

                                <div class="form-outline form-white mb-4">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" CssClass="error" ControlToValidate="typePasswordX2" ValidationGroup="G2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <input runat="server" type="password" placeholder="Password" id="typePasswordX2" class="form-control form-control-lg" controltovalidate="typePasswordX2" />

                                </div>
                                <div class="form-outline form-white mb-4">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="typePasswordX3" CssClass="error" ValidationGroup="G2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="typePasswordX2" ControlToValidate="typePasswordX3" CssClass="error" ErrorMessage="no match" ValidationGroup="G2" Display="Dynamic"></asp:CompareValidator>
                                    <input runat="server" type="password" placeholder="Confirm Password" id="typePasswordX3" class="form-control form-control-lg" />

                                </div>

                                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!"></a></p>

                                <asp:Button ID="Button2" runat="server" class="btn btn-outline-primary btn-lg px-5" Text="SignUp" ValidationGroup="G2" OnClick="Button2_Click" />

                                <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                    <a href="#!" class="text-primary"><i class="fab fa-facebook-f fa-lg"></i></a>
                                    <a href="#!" class="text-primary"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                    <a href="#!" class="text-primary"><i class="fab fa-google fa-lg"></i></a>
                                </div>

                            </div>

                            <div>
                                <p class="mb-0">
                                    <a href="#!" class="text-white-50 fw-bold"></a>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
