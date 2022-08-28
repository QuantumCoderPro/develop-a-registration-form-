<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="registerform.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 70px;
        }
        .auto-style4 {
            width: 199px;
            height: 23px;
        }
        .auto-style5 {
            width: 70px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 199px;
            height: 26px;
        }
        .auto-style8 {
            width: 70px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
        <div style="font-size: xx-large; text-align: right">
            Employee Registration Form</div>
        <table class="auto-style1">
            <tr>
                <td id="title" class="auto-style2">Title</td>
                <td class="auto-style3">
                    <asp:ListBox ID="title" runat="server" BackColor="White">
                        <asp:ListItem>Dr.</asp:ListItem>
                        <asp:ListItem>Mr.</asp:ListItem>
                        <asp:ListItem>Ms.</asp:ListItem>
                        <asp:ListItem>Mrs.</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title" ErrorMessage="Title is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="name" class="auto-style2">Name with initials</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Fname" runat="server" Width="178px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Fname" ErrorMessage="Name is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="dob" class="auto-style2">Date of Birth</td>
                <td class="auto-style3">
                    <asp:TextBox ID="dob" runat="server" TextMode="Date" Width="132px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dob" ErrorMessage="DoB is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="conNo" class="auto-style2">Contact No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="number" runat="server" TextMode="Number" Width="174px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="number" ErrorMessage="Contact No is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="Address" class="auto-style2">Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="address" runat="server" Width="176px"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="address" ErrorMessage="CustomValidator" ForeColor="#CC0000"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td id="email" class="auto-style2">E mail</td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server" TextMode="Email" Width="174px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="Email is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email must be in the correct format" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td id="Linkedin url" class="auto-style7">LinkedIn&nbsp; URL</td>
                <td class="auto-style8">
                    <asp:TextBox ID="url" runat="server" TextMode="Search" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="url" ErrorMessage="URL is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="url" ErrorMessage="Must be in the correct format" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td id="uploadcv" class="auto-style4">Upload CV</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="choosefile" runat="server" BackColor="#CCFFCC" />
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="choosefile" ErrorMessage="CV is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="password" class="auto-style2">Add a secret word</td>
                <td class="auto-style3">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator runat="server" ControlToCompare="conpassword" ControlToValidate="password" ErrorMessage="Secret Word is required" ForeColor="#CC0000"></asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="password" ErrorMessage="Only lower letters(simple) are allow" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td id="con.password" class="auto-style7">Secret word Confirm</td>
                <td class="auto-style8">
                    <asp:TextBox ID="conpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="conpassword" ControlToValidate="password" ErrorMessage="Re-Enter Secret Word" ForeColor="#CC0000"></asp:CompareValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="conpassword" ErrorMessage="Enter same Secret Word" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <p class="auto-style10">
            <asp:Button ID="Button1" runat="server" BackColor="#009999" OnClick="Button1_Click" Text="SUBMIT" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#CCFFFF" OnClick="Button2_Click" Text="RESET" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
