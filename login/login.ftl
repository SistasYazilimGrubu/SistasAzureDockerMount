<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "form">
        <#if realm.password>
            <form id="kc-form-login" class="smart-form-login form-horizontal" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="form-group label-floating">
                    <div class="smart-label">
                        <label for="username" class="control-label"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                    </div>

                    <div class="col-md-12">
                        <#if usernameEditDisabled??>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="ti-user"></i>
								</div>
								<input tabindex="1" id="username" class="form-control" name="username" value="${(login.username!'')}" type="text" disabled />
							</div>
                        <#else>
						<div class="input-group">
							<div class="input-group-addon">
								<i class="ti-user"></i>
							</div>
                            <input tabindex="1" id="username" class="form-control" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" />
						</div>
                        </#if>
                    </div>
                </div>

                <div class="form-group label-floating">
                    <div class="smart-label">
                        <label for="password" class="control-label">${msg("password")}</label>
                    </div>

                    <div class="col-md-12">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="ti-lock"></i>
							</div>
							<input tabindex="2" id="password" class="form-control" name="password" type="password" autocomplete="off" />
						</div>
                    </div>
                </div>
				
				
					<div class="form-group" style="margin-top: 10px;">
						<div class="col-md-12" style="padding-left: 10px; padding-right: 0;">
							<div class="col-md-6">
								<#if realm.rememberMe && !usernameEditDisabled??>
									<div class="checkbox" style="padding: 0;">
										<label>
											<#if login.rememberMe??>
												<input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
											<#else>
												<input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
											</#if>
										</label>
									</div>
								</#if>
							</div>
							
							<div class="col-md-6">
								<#if realm.resetPasswordAllowed>
									<div class="">
										<div style="text-align: right; top: 5px; position: relative;">
											<a class="smart-forgot-password" tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
										</div>
									</div>
								</#if>
							</div>
						</div>
					</div>
				
				
				
                <div class="row">
					<div class="col-md-12">
						<div id="kc-form-buttons" class="submit">
							<div class="smart-button-wrapper" style="text-align: right;">
								<input tabindex="4" class="btn btn-primary btn-raised" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />
							</div>
						 </div>
					 </div>
                </div>
				
				
				
            </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>

        <#if realm.password && social.providers??>
            <div id="kc-social-providers" class="smart-social-providers">
                <ul>
                    <#list social.providers as p>
                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.displayName}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
