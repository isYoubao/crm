<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>服务创建 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
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
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softwareName">编号
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="softwareName"
              type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="APKName">服务类型
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <select name="zhipaifro" id="fuwutype" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softwareSize">概要 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="softwareSize" name="softwareSize"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
                     data-validate-minmax="10,500"  placeholder="请输入概要" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="supportROM">客户 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="supportROM" class="form-control col-md-7 col-xs-12" name="supportROM" 
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入客户名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appInfo">状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="status" name="status" type="text" value="新创建" class="form-control col-md-7 col-xs-12" readonly="readonly"/>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="interfaceLanguage">服务请求 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="interfaceLanguage" class="form-control col-md-7 col-xs-12"  >
              </textarea>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="downloads">创建人
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="downloads" name="downloads"
              data-validate-minmax="10,500" placeholder="创建人" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel3">创建时间 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="categoryLevel3" name="categoryLevel3"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
                     data-validate-minmax="10,500"  placeholder="请输入创建时间" class="form-control col-md-7 col-xs-12">            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="zhipaifro">分配给 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="zhipaifro" id="zhipaifro" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel3">分配时间 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="categoryLevel" name="categoryLevel"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
                     data-validate-minmax="10,500"  placeholder="请输入分配时间" class="form-control col-md-7 col-xs-12">            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="interfaceLanguage">服务处理 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="" class="form-control col-md-7 col-xs-12"  >
              </textarea>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="downloads">处理人
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="ss" name="downloads"
                     data-validate-minmax="10,500" placeholder="处理人" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel3">处理时间 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="zz" name="categoryLevel"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
                     data-validate-minmax="10,500"  placeholder="请输入处理时间" class="form-control col-md-7 col-xs-12">            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="downloads">处理结果
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="z" name="downloads"
                     data-validate-minmax="10,500" placeholder="处理结果" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="APKName">满意度
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="zhipaifro" id="fuwu" class="form-control"  required="required"></select>
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