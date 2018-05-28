<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <form id="kc-passwd-update-form" class="smart-passwd-update-form form-horizontal" action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>
		
			<div class="form-group label-floating">
				<div class="smart-label">
					<label for="password-new" class="control-label">${msg("passwordNew")}</label>
				</div>

				<div class="col-md-12">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="ti-lock"></i>
						</div>
						<input type="password" id="password-new" name="password-new" class="form-control" autofocus autocomplete="new-password" />
					</div>
				</div>
			</div>
			
			<div class="form-group label-floating">
				<div class="smart-label">
					<label for="password-confirm" class="control-label">${msg("passwordConfirm")}</label>
				</div>

				<div class="col-md-12">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="ti-lock"></i>
						</div>
						<input type="password" id="password-confirm" name="password-confirm" class="form-control" autocomplete="new-password" />
					</div>
				</div>
			</div>
			
            <div class="form-group">
                <div id="kc-form-buttons" class="col-md-12 submit smart-form-buttons">
                    <input class="btn btn-primary btn-raised" type="submit" value="${msg("doSubmit")}"/>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
