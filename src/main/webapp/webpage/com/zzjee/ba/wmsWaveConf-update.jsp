<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>波次配置</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="wmsWaveConfController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${wmsWaveConfPage.id }">
					<input id="createName" name="createName" type="hidden" value="${wmsWaveConfPage.createName }">
					<input id="createBy" name="createBy" type="hidden" value="${wmsWaveConfPage.createBy }">
					<input id="createDate" name="createDate" type="hidden" value="${wmsWaveConfPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${wmsWaveConfPage.updateName }">
					<input id="updateBy" name="updateBy" type="hidden" value="${wmsWaveConfPage.updateBy }">
					<input id="updateDate" name="updateDate" type="hidden" value="${wmsWaveConfPage.updateDate }">
					<input id="sysOrgCode" name="sysOrgCode" type="hidden" value="${wmsWaveConfPage.sysOrgCode }">
					<input id="sysCompanyCode" name="sysCompanyCode" type="hidden" value="${wmsWaveConfPage.sysCompanyCode }">
					<input id="bpmStatus" name="bpmStatus" type="hidden" value="${wmsWaveConfPage.bpmStatus }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								配送点:
							</label>
						</td>
						<td class="value">
						     	 <input id="peisondian" name="peisondian" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${wmsWaveConfPage.peisondian}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">配送点</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								波次类型:
							</label>
						</td>
						<td class="value">
						     	 <input id="waveType" name="waveType" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${wmsWaveConfPage.waveType}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">波次类型</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								备用1:
							</label>
						</td>
						<td class="value">
						     	 <input id="wvBy1" name="wvBy1" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${wmsWaveConfPage.wvBy1}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备用1</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								备用2:
							</label>
						</td>
						<td class="value">
						     	 <input id="wvBy2" name="wvBy2" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${wmsWaveConfPage.wvBy2}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备用2</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								备用3:
							</label>
						</td>
						<td class="value">
						     	 <input id="wvBy3" name="wvBy3" type="text" style="width: 150px" class="inputxt"  
						     	 ignore="ignore" 
						     	 value='${wmsWaveConfPage.wvBy3}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备用3</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/zzjee/ba/wmsWaveConf.js"></script>		
