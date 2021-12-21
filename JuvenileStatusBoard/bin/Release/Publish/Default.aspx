<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JuvenileStatusBoard._Default" %>

<%@ Register assembly="C1.Web.Wijmo.Controls.4" namespace="C1.Web.Wijmo.Controls.C1GridView" tagprefix="wijmo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- First Table Warriors -->    
    <br />
     <!-- The total number of Juvenile in team Warrior -->

            <asp:DataList ID="warInOutFacility" runat="server" RepeatDirection="Horizontal">
                     <ItemTemplate>
                         <asp:Label ID="label1" runat="server" Text='<%# "WARRIORS: "%>' Font-Bold="True"></asp:Label>
                         <asp:Label ID="label5" runat="server" Text='total '></asp:Label>
                         <asp:Label ID="label4" runat="server" Text='<%# Eval("WarriorCount") + ","%>'></asp:Label>
                         <asp:Label ID="label3" runat="server" Text='offsite '></asp:Label>
                         <asp:Label ID="label2" runat="server" Text='<%#Eval("TempCount")%>'></asp:Label>
                     </ItemTemplate>
            </asp:DataList>

     <!-- End of Warrior total -->
            <asp:GridView ID="gvWarriors" runat="server" BackColor="Gainsboro" RowStyle-HorizontalAlign="Center" AllowVirtualScrolling="False" AutogenerateColumns="False" DataKeyNames="IJOS#" FreezingMode="None" RowHeight="19" ScrollMode="None" StaticColumnIndex="-1" StaticRowIndex="-1" style="font-size: smaller;">
                <Columns>
                    <asp:BoundField DataField="IJOS#" HeaderText="IJOS#" ReadOnly="True" SortExpression="IJOS#">
                        <ItemStyle Width="1%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="JUVENILE" HeaderText="JUVENILE" SortExpression="JUVENILE">
                        <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ROOM_NUMBER" HeaderText="ROOM#" SortExpression="ROOM_NUMBER">
                        <ItemStyle Width="1%" />
                    </asp:BoundField> 
                    <asp:BoundField DataField="PROGRAM_LEVEL" HeaderText="PROGRAM LEVEL" SortExpression="PROGRAM LEVEL">
                        <ItemStyle Width="8%" />
                    </asp:BoundField>
                    <asp:TemplateField ItemStyle-Width="15%" HeaderText="LMA RESTRICTIONS" SortExpression="LMA">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("LMA")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="10%" HeaderText="PRECAUTIONS" SortExpression="PRECAUTIONS">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("PRECAUTIONS")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="30%" HeaderText="GENERAL NOTES" SortExpression="GENERAL NOTES">
                        <ItemTemplate >
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("GENERAL_NOTES")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="Honeydew"></RowStyle>
            </asp:GridView>

<!-- End of Warrior info -->
 
<!-- Second Table Knights -->
    <br />
     <!-- The total number of Juvenile in team Knights -->
    
            <asp:DataList ID="knightsInOutFacility" runat="server" RepeatDirection="Horizontal">
                     <ItemTemplate>
                         <asp:Label ID="label1" runat="server" Text='<%# "KNIGHTS: "%>' Font-Bold="True"></asp:Label>
                         <asp:Label ID="label5" runat="server" Text='total '></asp:Label>
                         <asp:Label ID="label4" runat="server" Text='<%# Eval("KnightsCount") + ","%>'></asp:Label>
                         <asp:Label ID="label3" runat="server" Text='offsite '></asp:Label>
                         <asp:Label ID="label2" runat="server" Text='<%#Eval("TempCount")%>'></asp:Label>
                     </ItemTemplate>
            </asp:DataList>
     <!-- End of Knights total -->
            <asp:GridView ID="gvKnights" runat="server" BackColor="Gainsboro" AllowVirtualScrolling="False" AutogenerateColumns="False" DataKeyNames="IJOS#" FreezingMode="None" RowHeight="19" ScrollMode="None" StaticColumnIndex="-1" StaticRowIndex="-1" style="font-size: smaller;">
                <Columns>
                    <asp:BoundField DataField="IJOS#" HeaderText="IJOS#" ReadOnly="True" SortExpression="IJOS#">
                        <ItemStyle Width="1%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="JUVENILE" HeaderText="JUVENILE" SortExpression="JUVENILE">
                        <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ROOM_NUMBER" HeaderText="ROOM#" SortExpression="ROOM_NUMBER">
                        <ItemStyle Width="1%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PROGRAM_LEVEL" HeaderText="PROGRAM LEVEL" SortExpression="PROGRAM LEVEL">
                        <ItemStyle Width="8%" />
                    </asp:BoundField>
                    <asp:TemplateField ItemStyle-Width="15%" HeaderText="LMA RESTRICTIONS" SortExpression="LMA">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("LMA")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField ItemStyle-Width="10%" HeaderText="PRECAUTIONS" SortExpression="PRECAUTIONS">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("PRECAUTIONS")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="30%" HeaderText="GENERAL NOTES" SortExpression="GENERAL NOTES">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("GENERAL_NOTES")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="AliceBlue"></RowStyle>
            </asp:GridView>

<!-- End of Knight info -->
 
<!-- Third table Strive -->
    <br />
     <!-- The total number of Juvenile in team Strive -->
            <asp:DataList ID="striveInOutFacility" runat="server" RepeatDirection="Horizontal">
                     <ItemTemplate>
                         <asp:Label ID="label1" runat="server" Text='<%# "STRIVE: "%>' Font-Bold="True"></asp:Label>
                         <asp:Label ID="label5" runat="server" Text='total '></asp:Label>
                         <asp:Label ID="label4" runat="server" Text='<%# Eval("StriveCount") + ","%>'></asp:Label>
                         <asp:Label ID="label3" runat="server" Text='offsite '></asp:Label>
                         <asp:Label ID="label2" runat="server" Text='<%#Eval("TempCount")%>'></asp:Label>
                     </ItemTemplate>
            </asp:DataList>
     <!-- End of Strive total -->
            <asp:GridView ID="gvStrive" runat="server" BackColor="Gainsboro" AllowVirtualScrolling="False" AutogenerateColumns="False" DataKeyNames="IJOS#" FreezingMode="None" RowHeight="19" ScrollMode="None" StaticColumnIndex="-1" StaticRowIndex="-1" style="font-size: smaller;">
                <Columns>
                    <asp:BoundField DataField="IJOS#" HeaderText="IJOS#" ReadOnly="True" SortExpression="IJOS#">
                        <ItemStyle Width="1%"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="JUVENILE" HeaderText="JUVENILE" SortExpression="JUVENILE">
                        <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ROOM_NUMBER" HeaderText="ROOM#" SortExpression="ROOM_NUMBER">
                        <ItemStyle Width="1%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PROGRAM_LEVEL" HeaderText="PROGRAM LEVEL" SortExpression="PROGRAM LEVEL">
                        <ItemStyle Width="8%" />
                    </asp:BoundField>
                    <asp:TemplateField ItemStyle-Width="15%" HeaderText="LMA RESTRICTIONS" SortExpression="LMA">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("LMA")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField ItemStyle-Width="10%" HeaderText="PRECAUTIONS" SortExpression="PRECAUTIONS">
                        <ItemTemplate>
                        <div style="overflow: auto; word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("PRECAUTIONS")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="30%" HeaderText="GENERAL NOTES" SortExpression="GENERAL NOTES">
                        <ItemTemplate>
                        <div style="overflow: auto; /* word-break: break-all; */ word-wrap: break-word; height: 40px; font-size:smaller;">
                            <%# Eval("GENERAL_NOTES")%>
                         </div>
                         </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="WhiteSmoke"></RowStyle>
            </asp:GridView>
    <!-- End of Strive info -->
    <!-- End of table Application -->
    <br />
    <br />
</asp:Content>