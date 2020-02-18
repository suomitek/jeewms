<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>物料</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tWzMaterialController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${tWzMaterialPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								物料编码:
							</label>
						</td>
						<td class="value">
						    <input id="matCode" name="matCode" type="text" style="width: 150px" class="inputxt" 		validType="t_wz_material,mat_code,id" datatype="*" ignore="checked"  value='${tWzMaterialPage.matCode}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">物料编码</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								物料名称:
							</label>
						</td>
						<td class="value">
						    <input id="matName" name="matName" type="text" style="width: 150px" class="inputxt" 		datatype="*" ignore="checked"  value='${tWzMaterialPage.matName}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">物料名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								单位:
							</label>
						</td>
 						<td class="value">
									<t:dictSelect field="matUnit" type="list" 		datatype="*" dictTable="ba_unit" dictField="UNIT_CODE" dictText="UNIT_ZH_NAME"   defaultVal="${tWzMaterialPage.matUnit}" hasLabel="false"  title="单位" ></t:dictSelect>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">单位</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								规格:
							</label>
						</td>
						<td class="value">
						    <input id="matGuige" name="matGuige" type="text" style="width: 150px" class="inputxt"  ignore="ignore"  value='${tWzMaterialPage.matGuige}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">规格</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								等级:
							</label>
						</td>
						<td class="value">
						    <input id="matClass" name="matClass" type="text" style="width: 150px" class="inputxt"  ignore="ignore"  value='${tWzMaterialPage.matClass}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">等级</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								标准价元:
							</label>
						</td>
						<td class="value">
						    <input id="matPrice" name="matPrice" type="text" style="width: 150px" class="inputxt" 		datatype="*" ignore="checked"  value='${tWzMaterialPage.matPrice}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">标准价元</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								安全库存:
							</label>
						</td>
						<td class="value">
						    <input id="matAqkc" name="matAqkc" type="text" style="width: 150px" class="inputxt" 		datatype="*" ignore="checked"  value='${tWzMaterialPage.matAqkc}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">安全库存</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								仓库:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="matLocation" type="list" 		datatype="*" dictTable="t_wz_location" dictField="mat_location" dictText="mat_location"   defaultVal="${tWzMaterialPage.matLocation}" hasLabel="false"  title="仓库" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">仓库</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/zzjee/wz/tWzMaterial.js"></script>
