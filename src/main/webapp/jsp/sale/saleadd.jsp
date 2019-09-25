<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增销售机会信息 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
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
        <form class="form-horizontal form-label-left" action="/doSaleAdd" method="post" >

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcSource">机会来源
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="chcSource" class="form-control col-md-7 col-xs-12"
              	data-validate-length-range="20" placeholder="请输入机会来源" data-validate-words="1" name="chcSource"  type="text">
              <font color="red"></font>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcCustName">客户名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="chcCustName" class="form-control col-md-7 col-xs-12" name="chcCustName"
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入客户名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcRate">成功机率 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="chcRate" class="form-control col-md-7 col-xs-12"
              data-validate-length-range="20" data-validate-words="1" name="chcRate"   required="required"
              placeholder="请输入成功几率" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcTitle">概要 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="chcTitle" name="chcTitle"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
              data-validate-minmax="10,500"  placeholder="请输入概要" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcLinkman">联系人
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="chcLinkman" name="chcLinkman"
              data-validate-minmax="10,500" placeholder="请输入联系人" class="form-control col-md-7 col-xs-12">
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="chcTel">联系人电话 </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="chcTel" name="chcTel"
                     data-validate-minmax="10,500" placeholder="请输入联系人电话" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcDesc">机会描述 </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea name="chcDesc" id="chcDesc" class="form-control col-md-7 col-xs-12">

              </textarea>
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcDueId">指派给 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="chcDueId" id=chcDueId" class="form-control"  required="required">
                  <c:forEach items="${userList}" var="user">
                    <c:if test="${user.usrRoleId==2}">
                    <option value="${user.usrId}">${user.usrName}</option>
                    </c:if>
                  </c:forEach>
              </select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="chcDueDate">指派时间 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="chcDueDate" name="chcDueDate" type="text"  class="form-control col-md-7 col-xs-12"/>
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

<%@include file="../common/footer.jsp"%>
<script src="${pageContext.request.contextPath }/localjs/appinfoadd.js"></script>
<script>
  $(function () {
    $("#back").click(function () {
      location.href="/saleList";
    })
  })
</script>