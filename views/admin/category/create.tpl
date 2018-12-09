    <ul class="breadcrumb"><li><a href="/admin">首页</a></li>
        {{str2html .m.crumbs}}
    </ul>
    <div class="form-create">
        <script src="/static/vendors/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function()  {
                //一级改变事件，把一级ID传递给接口，返回二级内容 //flid=3 三级
                $("#cate1").change(function()  {
                    var id=$(this).val();
                    //alert("HTML: " + id);
                    var dataString = 'id='+ id ; //flid=2 二级
                    // alert("HTML: " + dataString);

                    $.ajax ({
                        type: "GET",
                        url: "/admin/category/select",
                        data: dataString,
                        cache: false,
                        success: function(html)  {
                            $("#cate2").html(html);
                        }
                    });
                });
            });
        </script>

        <div class="form-form">

            <div class="card">
                <div class="content">

                    <form id="w0" action="/admin/category/save" method="post">
                        <div class="form-group">
                            <label class="control-label">分类名称</label>
                            <input type="text" class="form-control" name="cat_name" maxlength="255">

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">上级分类</label>
                            <div class="form-control">
                                <label>一级分类:</label>
                                <select name="cate1" id="cate1">
                                    <option>--请选择--</option>
                                    {{range $key, $val := .category}}
                                    <option value="{{$val.Cat_id}}">{{$val.Cat_name}}</option>
                                    {{end}}
                                </select>
                                <label>二级分类 :</label>
                                <select name="cate2" id="cate2">
                                    <option selected="selected">--请选择--</option>
                                </select>
                                  (如果为顶级目录，此项不选)
                            </div>

                            <div class="help-block"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">排序序号</label>
                            <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">是否显示在导航栏</label>
                            <select class="form-control" name="show_in_nav">
                                <option value="0">否</option>
                                <option value="1">是</option>
                            </select>

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">是否显示</label>
                            <select class="form-control" name="is_show">
                                <option value="1">是</option>
                                <option value="0">否</option>
                            </select>

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">保存</button>
                        </div>

                    </form>
                </div>

            </div>

        </div>
    </div>