<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2> 编辑交往记录 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
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
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="date">时间<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="date" class="form-control col-md-7 col-xs-12"
               data-validate-length-range="20" data-validate-words="1" name="date" required="required"
              type="text" placeholder="请输入时间">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="address">地点<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="address" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1"  name="address" required="required"
                     type="text" placeholder="请输入地点">
              <font color="red"></font>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="gy">概要 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="gy" class="form-control col-md-7 col-xs-12" name="gy"
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入概要" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="beizhu">备注
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="beizhu" class="form-control col-md-7 col-xs-12"
              data-validate-length-range="20" data-validate-words="1" name="beizhu"
              placeholder="请输入备注" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="xxinfo">详细信息
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="xxinfo" name="xxinfo" class="form-control col-md-7 col-xs-12" ></textarea>
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