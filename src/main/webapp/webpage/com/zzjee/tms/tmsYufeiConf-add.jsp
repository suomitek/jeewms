<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>运费配置</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tmsYufeiConfController.do?doAdd" >
		<input id="id" name="id" type="hidden" value="${tmsYufeiConfPage.id }"/>
		<input id="createName" name="createName" type="hidden" value="${tmsYufeiConfPage.createName }"/>
		<input id="createBy" name="createBy" type="hidden" value="${tmsYufeiConfPage.createBy }"/>
		<input id="createDate" name="createDate" type="hidden" value="${tmsYufeiConfPage.createDate }"/>
		<input id="updateName" name="updateName" type="hidden" value="${tmsYufeiConfPage.updateName }"/>
		<input id="updateBy" name="updateBy" type="hidden" value="${tmsYufeiConfPage.updateBy }"/>
		<input id="updateDate" name="updateDate" type="hidden" value="${tmsYufeiConfPage.updateDate }"/>
		<input id="sysOrgCode" name="sysOrgCode" type="hidden" value="${tmsYufeiConfPage.sysOrgCode }"/>
		<input id="sysCompanyCode" name="sysCompanyCode" type="hidden" value="${tmsYufeiConfPage.sysCompanyCode }"/>
		<input id="bpmStatus" name="bpmStatus" type="hidden" value="${tmsYufeiConfPage.bpmStatus }"/>
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
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">配送点</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							运费类型:
						</label>
					</td>
					<td class="value">
					     	 <input id="yfType" name="yfType" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">运费类型</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							运费名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="yfTypeName" name="yfTypeName" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">运费名称</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							运费单价:
						</label>
					</td>
					<td class="value">
					     	 <input id="yfPrice" name="yfPrice" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">运费单价</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							备注1:
						</label>
					</td>
					<td class="value">
					     	 <input id="yfBz1" name="yfBz1" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注1</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							备注2:
						</label>
					</td>
					<td class="value">
					     	 <input id="yfBz2" name="yfBz2" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注2</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							备注3:
						</label>
					</td>
					<td class="value">
					     	 <input id="yfBz3" name="yfBz3" type="text" style="width: 150px" class="inputxt" 
					     	  
					     	  ignore="ignore"
					     	  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注3</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/zzjee/tms/tmsYufeiConf.js"></script>		
