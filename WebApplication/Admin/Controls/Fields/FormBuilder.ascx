﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormBuilder.ascx.cs" Inherits="WebApplication.Admin.Controls.Fields.FormBuilder" %>

<asp:Panel runat="server" ID="AdminPanel">
    <script src="/Scripts/formBuilder-master/dist/form-builder.min.js"></script>
    <script>
        jQuery(function ($) {

            var fields = [
                {
                    label: "Email",
                    type: "text",
                    subtype: "email",
                    icon: "✉"
                }
            ];

            formBuilderOptions = {
                fields: fields,
                onSave: function () {
                    $("#<%= FormBuilderData.ClientID %>").val(formBuilder.formData);
                }
            }

            var formBuilder = $("#<%= FormBuilderWrapper.ClientID %>").formBuilder(formBuilderOptions);

            var currentVal = $("#<%= FormBuilderData.ClientID %>").val();

            formBuilder.promise.then(formBuilder => {
                formBuilder.actions.setData($("#<%= FormBuilderData.ClientID %>").val());
            });            
            
        });
    </script>
    <div id="FormBuilderWrapper" runat="server"></div>

    <asp:HiddenField ID="FormBuilderData" runat="server" />    

</asp:Panel>
<asp:Panel runat="server" ID="FrontEndPanel">
    <asp:PlaceHolder runat="server" ID="DynamicContent" />
</asp:Panel>