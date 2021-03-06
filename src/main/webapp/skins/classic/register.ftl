<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${registerLabel} - ${symphonyLabel}">
        <meta name="description" content="${registerLabel} ${symphonyLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/index.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}/register">
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper register">
                <div class="form">
                    <table cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td width="70">
                                    <label for="userName">${userNameLabel}</label>
                                </td>
                                <td width="165">
                                    <input autofocus="autofocus" type="text" id="userName" placeholder="${userNamePlaceholderLabel}" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="userEmail">${emailLabel}</label>
                                </td>
                                <td>
                                    <input type="text" id="userEmail" placeholder="${emailPlaceholderLabel}" />
                                </td>
                            </tr>
                            <tr <#if "2" != miscAllowRegister>class="fn-none"</#if>>
                                <td>
                                    <label for="invitecode">${invitecodeLabel}</label>
                                </td>
                                <td>
                                    <input type="text" id="invitecode" placeholder="${invitecodePlaceholderLabel}"/>
                                </td>
                            </tr>
                            <tr <#if "2" == miscAllowRegister>class="fn-none"</#if>>
                                <td>
                                    <label for="securityCode">${captchaLabel}</label>
                                </td>
                                <td>
                                    <input type="text" id="securityCode" />
                                    <img id="captcha" class="fn-pointer" src="${servePath}/captcha" onclick="this.src = '${servePath}/captcha?' + (new Date()).getTime()" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right"><br/>
                                    <div id="registerTip" class="tip"></div><br/>
                                    <button id="registerBtn" class="green" onclick="Register.register()">${registerLabel}</button>
                                    <input id="referral" type="hidden" value="${referral}">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="intro fn-flex-1 content-reset">
                    ${introLabel}
                </div>
            </div>
        </div>
        <#include "footer.ftl">
        <script type="text/javascript" src="${staticServePath}/js/register${miniPostfix}.js?${staticResourceVersion}"></script>
        <script>
                                        Register.init();
                                        Label.userNameErrorLabel = "${userNameErrorLabel}";
                                        Label.invalidEmailLabel = "${invalidEmailLabel}";
                                        Label.confirmPwdErrorLabel = "${confirmPwdErrorLabel}";
                                        Label.captchaErrorLabel = "${captchaErrorLabel}";
        </script>
    </body>
</html>
