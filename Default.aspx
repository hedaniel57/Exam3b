<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 155px;
        }
        .auto-style2 {
            width: 325px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align:center"><asp:Label ID="lbl_MSCI" runat="server" Text="<%$ Resources:Resource, Welcome %>"></asp:Label> MSCI: 3300</h1>
        <h2 style="text-align:center">
            <asp:Label ID="lbl_software" runat="server" Text="" meta:resourceKey="lbl_software"></asp:Label>
        </h2>
    </div>

        <div>
            <table style="border-style: solid; border-color:black; width:70%; margin-right: 15%; margin-left: 17%;">
                <tr>
                    <td style="border-right-style:solid;border-color:black" class="auto-style1">
                        <asp:Label ID="lbl_language" runat="server" Text="" meta:resourceKey="lbl_language"></asp:Label>
                        <br />
                        <asp:DropDownList ID="language1" runat="server" AutoPostBack="true">
                            <asp:ListItem Value="en-US">English</asp:ListItem> 
                             <asp:ListItem Value="es">español</asp:ListItem> 
                             <asp:ListItem Value="zh">中文 </asp:ListItem> 
                            <asp:ListItem Value="ar">العربية</asp:ListItem> 
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="language2" runat="server" AutoPostBack="true" Visible="False">
                            <asp:ListItem Value="en-US">English</asp:ListItem> 
                             <asp:ListItem Value="es">español</asp:ListItem> 
                             <asp:ListItem Value="zh">中文 </asp:ListItem> 
                            <asp:ListItem Value="ar">العربية</asp:ListItem> 
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <br />

                        <asp:Label ID="lbl_myName" runat="server" Text="" meta:resourceKey="lbl_myName"></asp:Label>

                        &nbsp;
                        <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your full name!" Font-Bold="true" ForeColor="Red" ControlToValidate="tb_name"></asp:RequiredFieldValidator>

                        <br />
                        <br />
                        <asp:Label ID="lbl_gender" runat="server" Text="" meta:resourceKey="lbl_gender"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rb_male" runat="server" Text="" GroupName="sex" meta:resourceKey="rb_male"/>
                        <asp:RadioButton ID="rb_female" runat="server" text="" GroupName="sex" meta:resourceKey="rb_female"/>
                        <br />
                        <asp:Label ID="lbl_hello" runat="server" Text="" Visible="False" meta:resourceKey="lbl_hello"></asp:Label>
                         &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_mr" runat="server" Text="Mr." Visible="False" meta:resourceKey="lbl_mr"></asp:Label>
                        &nbsp;<asp:Label ID="lbl_ms" runat="server" Text="Ms." meta:resourceKey="lbl_ms"></asp:Label>
                        <asp:Label ID="lbl_name" runat="server" Text="" Visible="False" meta:resourceKey="lbl_name"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lbl_grad" runat="server" Text="I plan to graduate on:" meta:resourceKey="lbl_grad"></asp:Label>
                        <br />
                        <asp:Label ID="lbl_hope" runat="server" Text="I hope you have a great day when you graduate on " Visible="False" meta:resourceKey="lbl_hope" ></asp:Label>
                        <asp:Label ID="lbl_graddate" runat="server" Text="Label" Visible="False" meta:resourceKey="lbl_graddate"></asp:Label>
                        <br />
                        <br />
                        <asp:calendar runat="server" ID="GradDate"></asp:calendar>
                        <br />
                        <asp:Label ID="lbl_wish" runat="server" Text="I wish you well in your career after graduation. " Visible="False" meta:resourceKey="lbl_wish" ></asp:Label>
                        <asp:Label ID="lbl_wish2" runat="server" Text="I hope you earn " Visible="False" meta:resourceKey="lbl_wish2" ></asp:Label>
                        &nbsp;<asp:Label ID="lbl_salary2" runat="server" Text="Label" Visible="False" meta:resourceKey="lbl_salary2"></asp:Label>
                        &nbsp;<asp:Label ID="lbl_wish3" runat="server" Text="as a salary in your first job! " Visible="False" meta:resourceKey="lbl_wish3" ></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lbl_salary" runat="server" Text="When I graduate, I hope to earn" meta:resourceKey="lbl_salary"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your desired salary!" Font-Bold="true" ForeColor="Red" ControlToValidate="tb_salary"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="lbl_visit" runat="server" Text="Please visit me on " Visible="False" meta:resourceKey="lbl_visit"></asp:Label>
                        <asp:HyperLink ID="link_github" runat="server" NavigateUrl="https://github.com/hedaniel57">Github</asp:HyperLink>
                        <br />
                        <asp:Button ID="btn_submit" runat="server" Text="Submit" meta:resourceKey="btn_submit"/>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
