<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SocialMedia.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <h1>
        Social Media Page</h1>
    <div>
        Did you find awesome SportsPro software?
        <br />
        <a href="https://twitter.com/share" class="twitter-share-button" data-size="large" data-text="I just got awesome new software from SportsPro! " data-hashtags="#awesomesoftware #sportsproapp" data-show-count="false">Tweet</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
        Tell your friends!</div>
    <a class="twitter-timeline" data-width="500" data-height="500" href="https://twitter.com/SportsPro">Tweets by SportsPro</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
</asp:Content>

