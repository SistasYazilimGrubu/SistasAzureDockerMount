<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form id="kc-reset-password-form" class="smart-reset-password-form form-horizontal" action="${url.loginAction}" method="post">
            <div class="form-group label-floating">
				<div class="smart-label">
					<label for="username" class="control-label"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
				</div>
				<div class="col-md-12">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="ti-user"></i>
						</div>
						<input type="text" id="username" name="username" class="form-control" autofocus/>
					</div>
				</div>
            </div>
            <div class="form-group">
				<div id="kc-form-options" class="col-md-6 smart-form-options">
					<a href="${url.loginUrl}" class="btn btn-default btn-raised">
						<i class="ti-angle-left" style="margin-right:5px; position: relative; bottom: -2px;"></i>
						${msg("backToLogin")?no_esc}
					</a>
				</div>
				<div id="kc-form-buttons" class="col-md-6 submit smart-form-buttons">
					<input class="btn btn-primary btn-raised" type="submit" value="${msg("doSubmit")}"/>
				</div>
            </div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
