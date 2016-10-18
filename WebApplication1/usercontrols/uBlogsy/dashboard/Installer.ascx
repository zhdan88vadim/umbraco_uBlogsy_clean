﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Installer.ascx.cs" Inherits="uBlogsy.Web.usercontrols.uBlogsy.Dashboard.Installer" %>
<div>
    <asp:MultiView ID="MvInstall" runat="server" ActiveViewIndex="0">
        <asp:View runat="server">
            <h2>Important!</h2>
            <p>
                Click the button to finish the installation.
            </p>
            <asp:Button ID="Button2" runat="server" Text="Finish Installation" OnClick="Install_Click" />
            <br />
            (Your application will restart, and this page will reload to force the browser to grab new uTagsy angular controller. )

        </asp:View>
        <asp:View ID="View2" runat="server">
            Done! Reloading page to force browser to grab new uTagsy angular controller.
            <script>
                $(function () {

                    var url = window.top.location.href;
                    if (url.indexOf('?') > -1) {
                        url += '&stepsuccess=1';
                    }
                    else {
                        url += '?stepsuccess=1';
                    }
                    window.top.location.href = url;

                });
            </script>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <h2>Success!</h2>
            <p>Installation Complete.  uBlogsy installed successfully.</p>
        </asp:View>
    </asp:MultiView>
</div>
