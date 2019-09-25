<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2> 暂缓流失 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
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
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id">编号
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="id" class="form-control col-md-7 col-xs-12"
               data-validate-length-range="20" data-validate-words="1" name="id" readonly="readonly"
              type="text" >
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="kehu">客户
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="kehu" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="kehu" readonly="readonly"
                     type="text" />
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jinli">客户经理
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="jinli" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="jinli" readonly="readonly"
                     type="text" />
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="xiadanshijian">
              上次下单时间
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="xiadanshijian" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="xiadanshijian" readonly="readonly"
                     type="text" />
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cuoshi">
              暂缓措施
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="cuoshi" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1" name="cuoshi" readonly="readonly"
                     type="text" />
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="zuijia">
              追加暂缓措施<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea name="zuijia" id="zuijia" class="form-control col-md-7 col-xs-12" required="required"></textarea>
            </div>
          </div>

          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="queren">确认流失</button>
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