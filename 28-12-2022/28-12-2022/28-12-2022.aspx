<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="28-12-2022.aspx.cs" Inherits="_28_12_2022._28_12_2022" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <section>
                    <div class="container my-5 py-5 text-dark">
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10 col-lg-8 col-xl-6">
                                <div class="card">
                                    <div class="card-body p-4">
                                        <div class="d-flex flex-start w-100">
                                            <img class="rounded-circle shadow-1-strong me-3"
                                                src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(21).webp" alt="avatar" width="65"
                                                height="65" />
                                            <div class="w-100">
                                                <h5>Add a comment</h5>

                                                <div class="form-outline">
                                                    <textarea runat="server" class="form-control" id="textAreaExample" rows="4"></textarea>
                                                    <label class="form-label" for="textAreaExample">What is your view?</label>
                                                </div>
                                                <div class="d-flex justify-content-between mt-3">

                                                    <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Send" OnClick="Button1_Click" />


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
