<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TISHT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap-theme.css" rel="stylesheet" />

</head>

<body>
    <form id="form1" runat="server">

        <!--login modal-->
        <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="text-center">Giriş Ekranı</h1>
                    </div>
                    <div class="modal-body">
                        <form class="form col-md-12 center-block">
                            <div class="form-group">
                                <asp:TextBox ID="txtkad" runat="server" class="form-control input-lg" placeholder="Kullanıcı Adı"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtpass" runat="server" type="password" class="form-control input-lg"
                                    placeholder="Şifre"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="Giriş Yap"
                                    class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
