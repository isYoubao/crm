<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>客户信息编辑 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
	  <!-- <div class="item form-group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" ></label>
               <div class="col-md-6 col-sm-6 col-xs-12">
                 <form action="uploadlogo" class="dropzone" style="height:100px;">
                 </form>
            <div class="clearfix"></div>
         </div>
       </div> -->
           <div class="clearfix"></div>
        <form class="form-horizontal form-label-left" action="doAppInfoAdd" method="post" enctype="multipart/form-data">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softwareName">客户编号
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12"  readonly="readonly"
               data-validate-length-range="20" data-validate-words="1" name="softwareName"
              type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="APKName">名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" class="form-control col-md-7 col-xs-12" 
              	data-validate-length-range="20" data-validate-words="1" name="APKName"   required="required"
              	placeholder="请输入名称" type="text">
              <font color="red"></font>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="supportROM">地区 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="supportROM" id="supportROM" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="interfaceLanguage">客户经理 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="interfaceLanguage" id="interfaceLanguage" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="status">客户等级 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="status" id="status" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appInfo">客户满意度 <span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select name="appInfo" id="appInfo" class="form-control"  required="required"></select>
          </div>
        </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appInfo1">客户信用度 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="appInfo1" id="appInfo1" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="APKName1">地址 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName1" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="APKName"   required="required"
                     placeholder="请输入名称" type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="APKName2">邮政编码 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName2" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="APKName2"   required="required"
                     placeholder="请输入名称" type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phone">电话 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="phone" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="phone"   required="required"
                     placeholder="请输入名称" type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cz">传真 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="cz" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="cz"   required="required"
                     placeholder="请输入名称" type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="www">网址 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="www" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="www"   required="required"
                     placeholder="请输入名称" type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="yy">营业执照注册号
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="yy" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="yy"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qian">注册资金（万元）
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="qian" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="qian"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fa">法人 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="fa" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="fa" required="required"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="yyr">年营业额
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="yyr" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="yyr"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ban">开户银行 <span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input id="ban" class="form-control col-md-7 col-xs-12"
                   data-validate-length-range="20" data-validate-words="1" name="ban" required="required"
                   type="text">
            <font color="red"></font>
          </div>
        </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="banid">银行帐号 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="banid" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="banid" required="required"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="djh">地税登记号
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="djh" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="djh"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="gs">国税登记号
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="gs" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="gs"
                     type="text">
              <font color="red"></font>
            </div>
          </div>
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back">返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="../../common/footer.jsp"%>
<script src="${pageContext.request.contextPath }/localjs/appinfoadd.js"></script>