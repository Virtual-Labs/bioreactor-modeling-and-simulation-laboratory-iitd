<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="BioVirualLab._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>IITD Bio Virtual Lab</title>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="style.ie6.css" type="text/css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="style.ie7.css" type="text/css" media="screen" /><![endif]-->
    <style type="text/css">
        .style1
        {
            width: 311px;
        }
        .style2
        {
            width: 122px;
            height: 138px;
        }
        .style3
        {
            width: 68px;
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="art-main">
        <div class="art-Sheet">
            <div class="art-Sheet-tl">
            </div>
            <div class="art-Sheet-tr">
            </div>
            <div class="art-Sheet-bl">
            </div>
            <div class="art-Sheet-br">
            </div>
            <div class="art-Sheet-tc">
            </div>
            <div class="art-Sheet-bc">
            </div>
            <div class="art-Sheet-cl">
            </div>
            <div class="art-Sheet-cr">
            </div>
            <div class="art-Sheet-cc">
            </div>
            <div class="art-Sheet-body">
                <div class="art-Header">
                    <div class="art-Header-png">
                    </div>
                    <div class="art-Header-jpeg">
                    </div>
                    <div class="art-Logo">
                        <h1 id="name-text" class="art-Logo-name">
                            <a href="#">IIT Delhi Virtual Lab</a></h1>
                        <div id="slogan-text" class="art-Logo-text">
                            Bioreactor Modelling and Simulation Lab</div>
                    </div>
                </div>
                <div class="art-contentLayout">
                    <div class="art-sidebar1">
                        <div class="art-Block">
                            <div class="art-Block-tl">
                            </div>
                            <div class="art-Block-tr">
                            </div>
                            <div class="art-Block-bl">
                            </div>
                            <div class="art-Block-br">
                            </div>
                            <div class="art-Block-tc">
                            </div>
                            <div class="art-Block-bc">
                            </div>
                            <div class="art-Block-cl">
                            </div>
                            <div class="art-Block-cr">
                            </div>
                            <div class="art-Block-cc">
                            </div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">
                                            Select Parameters</div>
                                        <asp:DropDownList Visible="false" Enabled="false" ID="lstExperiments" runat="server"
                                            Width="95%" DataTextField="Name" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="dgTimeParameters" runat="server" CellPadding="4" Width="100%" AutoGenerateColumns="False"
                                                            ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            <Columns>
                                                                <asp:BoundField DataField="Display_Name" HeaderText="Time Parameter" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Width="55%" />
                                                                <asp:TemplateField HeaderText="Value" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="TextBox1" Text='<%# DataBinder.Eval(Container.DataItem, "Value") %>'
                                                                            runat="server" Width="80%"></asp:TextBox>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Validation_Message" HeaderText="Range" ItemStyle-ForeColor="Black"
                                                                    ItemStyle-Width="50%" />
                                                            </Columns>
                                                            <EditRowStyle BackColor="#999999" />
                                                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="dgParameters" runat="server" CellPadding="4" Width="100%" AutoGenerateColumns="False"
                                                            ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            <Columns>
                                                                <asp:BoundField DataField="Display_Name" HeaderText="Parameter" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Width="10%" />
                                                                <asp:TemplateField HeaderText="Value" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="55%">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="TextBox1" Text='<%# DataBinder.Eval(Container.DataItem, "Value") %>'
                                                                            runat="server" Width="50%"></asp:TextBox>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Validation_Message" HeaderText="Range" ItemStyle-ForeColor="Black"
                                                                    ItemStyle-Width="80%" />
                                                            </Columns>
                                                            <EditRowStyle BackColor="#999999" />
                                                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="dgIntermediateTimeInputVariable" runat="server" CellPadding="4"
                                                            Width="100%" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            <Columns>
                                                                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Display_Name" HeaderText="Parameter"
                                                                    ItemStyle-Width="20%" />
                                                                <asp:TemplateField HeaderText="at Time" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="TextBox2" Text='<%# DataBinder.Eval(Container.DataItem, "Time")  %>'
                                                                            runat="server" Width="70%"></asp:TextBox>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Value" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="35%">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="TextBox1" Text='<%# DataBinder.Eval(Container.DataItem, "Value")  %>'
                                                                            runat="server" Width="70%"></asp:TextBox>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Validation_Message" HeaderText="Range" ItemStyle-Width="100%" />
                                                            </Columns>
                                                            <EditRowStyle BackColor="#999999" />
                                                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="dgOutput" runat="server" CellPadding="4" Width="100%" AutoGenerateColumns="False"
                                                            ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            <Columns>
                                                                <asp:BoundField DataField="Display_Name" HeaderText="Output Variable" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Width="50%" />
                                                                <asp:TemplateField HeaderText="Initial Value" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Width="100%">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="lstGraphs" runat="server" Width="80%" AutoPostBack="True" Text='<%# DataBinder.Eval(Container.DataItem, "Initial_Value") %>'>

                                                                        </asp:TextBox>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <EditRowStyle BackColor="#999999" />
                                                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="cleared">
                                                        </div>
                                                        <div class="cleared">
                                                        </div>
                                                        <table width="100%">
                                                            <tr align="center">
                                                                <td align="center">
                                                                    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
                                                                        <asp:Button class="art-button" ID="btnRunSimulation" runat="server" Text="Run Simulation" />
                                                                    </span>
                                                                </td>
                                                                <td align="left">
                                                                    <span class="art-button-wrapper"><span class="l"></span><span class="r"></span>
                                                                        <asp:Button class="art-button" ID="btnSaveResults" runat="server" Text="Save in excel" />
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="cleared">
                                </div>
                            </div>
                        </div>

                        <div class="art-Block">
                            <div class="art-Block-tl">
                            </div>
                            <div class="art-Block-tr">
                            </div>
                            <div class="art-Block-bl">
                            </div>
                            <div class="art-Block-br">
                            </div>
                            <div class="art-Block-tc">
                            </div>
                            <div class="art-Block-bc">
                            </div>
                            <div class="art-Block-cl">
                            </div>
                            <div class="art-Block-cr">
                            </div>
                            <div class="art-Block-cc">
                            </div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">
                                            BIOREactor
                                            Animation</div>
                                    </div>
                                </div>
                                <div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
                                            <table>
                                            
                                                                                            <tr>
                                                    <td style="padding: 20" class="style1">
                                                        <object type="application/x-shockwave-flash" data="Bio Reactor Animation.swf" style="height: 203px;
                                                            width: 270px">
                                                            <param name="movie" value="Bio Reactor Animation.swf" />
                                                        </object>
                                                    </td>
                                                </tr>

                                                </table>

                                                    </div>
                                        <div class="cleared">
                                        </div>
                                    </div>
                                </div>
                                <div class="cleared">
                                </div>
                            </div>
                        </div>



                        <div class="art-Block">
                            <div class="art-Block-tl">
                            </div>
                            <div class="art-Block-tr">
                            </div>
                            <div class="art-Block-bl">
                            </div>
                            <div class="art-Block-br">
                            </div>
                            <div class="art-Block-tc">
                            </div>
                            <div class="art-Block-bc">
                            </div>
                            <div class="art-Block-cl">
                            </div>
                            <div class="art-Block-cr">
                            </div>
                            <div class="art-Block-cc">
                            </div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">
                                            Contact Info</div>
                                    </div>
                                </div>
                                <div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
                                            <table width=100%>
                                                <tr>
                                                    <td align="center">
                                                        <img alt="" class="style2" src="images/akshome.jpg" />
                                                    </td>

                                                </tr>
                                                     <td align="left">
                                                        <div  style="height: 24px;
                                                            width: 23px"  />
</td>
                                                <tr>
                                                                                                    <td align="left">
                                                        &nbsp;</td>
                                                    </tr>
                                            </table>

                                                    <br />
                                                    <b>Dr A.K. Srivastava 
                                            <br />
                                           Ph.D. (McGill University, Montreal, Canada)<br />
                                            Professor 
                                            <br />
                                            Department of Biochemical Engineering &amp; Biotechnology
                                            <br />
                                            Indian Institute of Technology, Delhi
                                            <br />
                                            Hauz Khas,
                                            <br />
                                            New Delhi - 110016<br />
                                           Tel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : (91) 11 – 26591010
                                            <br />
                                            Fax&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : (91) 11 – 26582282
                                            <br />
                                            E-mail&nbsp;&nbsp; : <a href="mailto:ashokks@dbeb.iitd.ac.in">
                                            ashokks@dbeb.iitd.ac.in  </a>
                                            <br />
                                           &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <a href="mailto:ashokiitd@gmail.com">ashokiitd@gmail.comm</a>
                                            <br />
                                            Home page : <a href="http://web.iitd.ac.in/~ashokks">
                                            http://web.iitd.ac.in/~ashokks</a>
                                            <br />
                                            </b>
                                                    <br />
                                                    Simulation Developed By
                                                    <br />
                                                    <table cellpadding="10">
                                                        <tr>
                                                            <td>
                                                                <img alt="" class="style3" src="images/Wizda%20Logo%20Gmail.png" />
                                                            </td>
                                                            <td>
                                                                Email: info@wizda.in </br>Phone: +91-7208061443
                                                            </td>
                                                        </tr>
                                                    </table>
                                            <br />
                                                        <img alt=""  style="height: 165px;
                                                            width: 283px" src="images/card.jpg" /><br />
                                            &nbsp;</div>
                                        <div class="cleared">
                                        </div>
                                    </div>
                                </div>
                                <div class="cleared">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="art-content">
                        <div class="art-Post">
                            <div class="art-Post-body">
                                <div class="art-Post-inner">
                                    <h4 title="hdrChartCircuit" class="art-PostHeader">
                                        <img src="images/PostHeaderIcon.png" alt="PostHeaderIcon" />
                                        <asp:Label ID="lblNameOfExpt" runat="server" Text="Label"></asp:Label></h4>
                                    <div class="art-PosztContent">
                                        <table width="100%" style="height: 171px">
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 20" class="style1">
                                                </td>
                                                <td style="padding: 10">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="left">
                                                    <h4 title="hdrChartCircuit" class="art-PostHeader">
                                                        <img src="images/PostHeaderIcon.png" width="26" height="26" alt="PostHeaderIcon" />
                                                        Model Equations</h4>
                                                    <asp:Chart ID="ChartCircuit" runat="server" Height="500px" Width="480px">
                                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                                    </asp:Chart>
                                                </td>
                                                <tr>
                                                    <td colspan="2">
                                                    </td>
                                                </tr>

                                        </table>
                                    </div>
                                    <div class="cleared">
                                    </div>
                                </div>
                                <div class="cleared">
                                </div>
                            </div>
                        </div>
                        <div class="art-Post">
                            <div class="art-Post-body">
                                <div class="art-Post-inner">
                                    <h2 class="art-PostHeader">
                                        <img src="images/PostHeaderIcon.png" width="26" height="26" alt="PostHeaderIcon" />
                                        Output Graph</h2>
                                    <div class="art-PostContent">
                                        <asp:Chart ID="Chart1" runat="server" Height="293px" Width="480px">
                                            <Legends>
                                                <asp:Legend Docking="Bottom" Alignment="Center" IsTextAutoFit="False" Name="Default"
                                                    BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            <Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid"
                                                    BackSecondaryColor="White" BackColor="64, 165, 191, 228" ShadowColor="Transparent"
                                                    BackGradientStyle="TopBottom">
                                                    <AxisY LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisY2 LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" LineDashStyle="DashDot" Enabled="false" />
                                                    </AxisY2>
                                                    <AxisX LineColor="64, 64, 64, 64" Minimum="0" Title="Time">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                    </div>
                                    <div class="art-PostContent">
                                        <asp:Chart ID="Chart2" runat="server" Height="293px" Width="480px">
                                            <Legends>
                                                <asp:Legend Docking="Bottom" Alignment="Center" IsTextAutoFit="False" Name="Default"
                                                    BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            <Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid"
                                                    BackSecondaryColor="White" BackColor="64, 165, 191, 228" ShadowColor="Transparent"
                                                    BackGradientStyle="TopBottom">
                                                    <AxisY LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisY2 LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" LineDashStyle="DashDot" Enabled="false" />
                                                    </AxisY2>
                                                    <AxisX LineColor="64, 64, 64, 64" Minimum="0" Title="Time">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                    </div>
                                    <div class="art-PostContent">
                                        <asp:Chart ID="Chart3" runat="server" Height="293px" Width="480px">
                                            <Legends>
                                                <asp:Legend Docking="Bottom" Alignment="Center" IsTextAutoFit="False" Name="Default"
                                                    BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            <Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid"
                                                    BackSecondaryColor="White" BackColor="64, 165, 191, 228" ShadowColor="Transparent"
                                                    BackGradientStyle="TopBottom">
                                                    <AxisY LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisY2 LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" LineDashStyle="DashDot" Enabled="false" />
                                                    </AxisY2>
                                                    <AxisX LineColor="64, 64, 64, 64" Minimum="0" Title="Time">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                    </div>
                                    <div class="art-PostContent">
                                        <asp:Chart ID="Chart4" runat="server" Height="293px" Width="480px">
                                            <Legends>
                                                <asp:Legend Docking="Bottom" Alignment="Center" IsTextAutoFit="False" Name="Default"
                                                    BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            <Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid"
                                                    BackSecondaryColor="White" BackColor="64, 165, 191, 228" ShadowColor="Transparent"
                                                    BackGradientStyle="TopBottom">
                                                    <AxisY LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisY2 LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" LineDashStyle="DashDot" Enabled="false" />
                                                    </AxisY2>
                                                    <AxisX LineColor="64, 64, 64, 64" Minimum="0" Title="Time">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                    </div>
                                    <div class="art-PostContent">
                                        <asp:Chart ID="Chart5" runat="server" Height="293px" Width="480px">
                                            <Legends>
                                                <asp:Legend Docking="Bottom" Alignment="Center" IsTextAutoFit="False" Name="Default"
                                                    BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            <Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid"
                                                    BackSecondaryColor="White" BackColor="64, 165, 191, 228" ShadowColor="Transparent"
                                                    BackGradientStyle="TopBottom">
                                                    <AxisY LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisY2 LineColor="64, 64, 64, 64">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" LineDashStyle="DashDot" Enabled="false" />
                                                    </AxisY2>
                                                    <AxisX LineColor="64, 64, 64, 64" Minimum="0" Title="Time">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                    </div>
                                    <div class="cleared">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="art-Post">
                            <div class="art-Post-body">
                                <div class="art-Post-inner">
                                    <h2 class="art-PostHeader">
                                        <img src="images/PostHeaderIcon.png" width="26" height="26" alt="PostHeaderIcon" />
                                        Output Table</h2>
                                    <div class="art-PostContent">
                                        <div style="height: 400px; width: 480px; overflow: auto">
                                            <asp:GridView ID="dgOutputTable" runat="server" CellPadding="4" Width="95%" AutoGenerateColumns="True"
                                                ForeColor="#333333" GridLines="None" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <EditRowStyle BackColor="#999999" />
                                                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div class="cleared">
                                    </div>
                                </div>
                            </div>
                        </div>
                                                            <div class="art-PosztContent">
                                        <table width="100%" style="height: 171px">
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 20" class="style1">
                                                </td>
                                                <td style="padding: 10">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="left">
                                                    <h4 title="hdrChartCircuit" class="art-PostHeader">
                                                        <img src="images/PostHeaderIcon.png" width="26" height="26" alt="PostHeaderIcon" />
                                                        Bio Reactor Animation</h4>
                                                        <object type="application/x-shockwave-flash" data="Bio Reactor Animation.swf" style="height: 434px;
                                                            width: 580px">
                                                            <param name="movie" value="Bio Reactor Animation.swf" />
                                                        </object>
                                                </td>
                                                <tr>
                                                    <td colspan="2">
                                                    </td>
                                                </tr>

                                        </table>
                                    </div>
                                    <div class="cleared">
                                    </div>
                        <div class="art-Post">
                            <div class="art-Post-body">
                                <div class="art-Post-inner">
                                    <h2 class="art-PostHeader">
                                        <img src="images/PostHeaderIcon.png" width="26" height="26" alt="PostHeaderIcon" /> 
                                        Line 
                                        Diagram</h2>
                                    <div class="art-PostContent">
                                        <div style="height: 520px; width: 480px; overflow: auto">
                                            <asp:Chart ID="Chart6" BackImage="images\Batch_Microbial_Cultivation.jpg" BackImageWrapMode="Scaled"
                                                runat="server" Height="500px" Width="480px">
                                                <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            </asp:Chart>
                                        </div>
                                    </div>
                                    <div class="cleared">
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="art-Post">
                            <div class="art-Post-body">
                                <div class="art-Post-inner">
                                    <div class="art-PostContent">
                                        <div style="height: 520px; width: 480px; overflow: auto">
                                            <asp:Chart ID="Chart7" BackImage="images\Batch_Microbial_Cultivation.jpg" BackImageWrapMode="Scaled"
                                                runat="server" Height="500px" Width="480px">
                                                <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            </asp:Chart>
                                        </div>
                                    </div>
                                    <div class="cleared">
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="art-Post">
                            <div class="art-Post-body">
                                <div class="art-Post-inner">
                                    <div class="art-PostContent">
                                        <div style="height: 520px; width: 480px; overflow: auto">
                                            <asp:Chart ID="Chart8" BackImage="images\Batch_Microbial_Cultivation.jpg" BackImageWrapMode="Scaled"
                                                runat="server" Height="500px" Width="480px">
                                                <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                            </asp:Chart>
                                        </div>
                                    </div>
                                    <div class="cleared">
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
                <div class="cleared">
                </div>
                <div class="art-Footer">
                    <div class="art-Footer-inner">
                        <a href="#" class="art-rss-tag-icon" title="RSS"></a>
                        <div class="art-Footer-text">
                            <p>
                                Copyright &copy; 2012 Indian Institute of Technology, Delhi. All Rights Reserved..</p>
                        </div>
                    </div>
                    <div class="art-Footer-background">
                    </div>
                </div>
                <div class="cleared">
                </div>
            </div>
        </div>
        <div class="cleared">
        </div>
        <p class="art-page-footer">
    </div>
    </form>
</body>
</html>
