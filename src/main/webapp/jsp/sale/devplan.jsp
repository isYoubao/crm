<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>执行计划 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
        <div class="clearfix"></div>
      </div>
      <div class="x_content1">
        <form class="form-horizontal form-label-left" >
          <input type="hidden" name="id" value="${appInfo.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="id">编号 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" value="${appInfo.softwareName}"
                     type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">机会来源 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" value="${appInfo.softwareName}"
                     type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">客户名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12"
                     value="${appInfo.APKName}" readonly="readonly">
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">成功机率（%） <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12"
                     value="${appInfo.supportROM}" type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">概要 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" readonly="readonly"
                     value="${appInfo.interfaceLanguage}" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="status">状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" readonly="readonly"
                     value="${appInfo.interfaceLanguage}" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">联系人 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" value="${appInfo.softwareSize}"
                     class="form-control col-md-7 col-xs-12" readonly="readonly">
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">联系人电话 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" value="${appInfo.downloads}"
                     class="form-control col-md-7 col-xs-12" readonly="readonly">
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">机会描述 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12"
                     value="${appInfo.flatformName}" readonly="readonly">

            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">创建人 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12"
                     value="${appInfo.categoryLevel1Name} --> ${appInfo.categoryLevel2Name} --> ${appInfo.categoryLevel3Name}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">
              创建时间 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12"
                     value="${appInfo.statusName}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="zhipaifro">指派给 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <input type="text" class="form-control col-md-7 col-xs-12"
                       value="${appInfo.statusName}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data">指派时间 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="data" name="data" type="text" readonly="readonly" value="当前时间" class="form-control col-md-7 col-xs-12" />
            </div>
          </div>
        </form>
      </div>
      <div class="clearfix"></div>
      <div class="x_content" style="display: block;">
        <br>
        <div id="datatable-responsive_wrapper"
             class="dataTables_wrapper form-inline dt-bootstrap no-footer">
          <div class="row">
            <div class="col-sm-12">
              <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
                     cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
                <thead>
                <tr role="row">
                  <th class="sorting_asc" tabindex="0"
                      aria-controls="datatable-responsive" rowspan="1" colspan="1"
                      style="width: 70px;" aria-label="First name: activate to sort column descending"
                      aria-sort="ascending">日期</th>
                  <th class="sorting" tabindex="0"
                      aria-controls="datatable-responsive" rowspan="1" colspan="1"
                      style="width: 10px;"
                      aria-label="Last name: activate to sort column ascending">
                    计划项</th>
                </tr>
                </thead>
                <tbody>
                <form class="form-horizontal form-label-left" >
                  <tr role="row" class="odd">
                    <td tabindex="0" class="sorting_1">${appVersion.appName}</td>
                    <td><input type="text" name="jihua"/> <input type="submit" value="保存"/> <input type="button" value="删除" />  </td>
                  </tr>
                </form>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="x_content1">
        <form class="form-horizontal form-label-left" >
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data1">日期 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" name="data1" id="data1" class="form-control col-md-7 col-xs-12"/>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jihua1">计划项目 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" name="jihua1" id="jihua1" class="form-control col-md-7 col-xs-12"/>
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
  <%@include file="../common/footer.jsp"%>
  <script src="${pageContext.request.contextPath }/localjs/appinfoview.js"></script>