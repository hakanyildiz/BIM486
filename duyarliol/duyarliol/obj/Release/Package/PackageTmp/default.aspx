﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="duyarliol._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="seo" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
    <link rel="import" href="assets/duyarliol/do-app.html" async/>
    <style>
        #defaultContainer { width: 100%; height: calc(100vh) !important; overflow-y: auto; }
        paper-fab-scroll-to-top paper-fab{
            background: #3F51B5 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
         <div id="defaultContainer">
            <do-app uid=<%= uid %>></do-app>
         </div>
        <paper-fab-scroll-to-top for-element="defaultContainer" pin-bottom-right></paper-fab-scroll-to-top>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script>
        document.addEventListener('WebComponentsReady', function () {
            if (document.getElementById('interactionThreshold') !== null) {
                document.getElementById('interactionThreshold').scrollTarget = document.getElementById('defaultContainer');
            }
        });
    </script>
</asp:Content>
