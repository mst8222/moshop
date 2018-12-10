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

                <form id="w0" action="/admin/goods/save" method="post">
                    <div class="form-group">
                        <label class="control-label">商品名称</label>
                        <input type="text" class="form-control" name="goods_name" maxlength="255">

                        <div class="help-block"></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">商品分类</label>
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
                        <label class="control-label">品牌</label>
                        <select class="form-control" name="show_in_nav">
                            <option value="0">否</option>
                            <option value="1">是</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品重量</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">市场价格</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">平台价格</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">促销价格</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">促销起止时间</label>
                        <div class="form-control">
                            <label>促销开始时间</label><input type="text"  name="sort_order" maxlength="25" width="25">
                            <label>促销结束时间</label><input type="text"  name="sort_order" maxlength="25" width="25">
                        </div>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品关键词</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品简单说明</label>
                        <div class="form-control">
                            <textarea></textarea>
                        </div>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品详细描述</label>
                        <div class="form-control">
                            <textarea></textarea>
                        </div>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品代表图</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品广告图</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品图册</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">是否销售</label>
                        <select class="form-control" name="show_in_nav">
                            <option value="0">否</option>
                            <option value="1">是</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商品积分</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">排序序号</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">是否已删除</label>
                        <select class="form-control" name="is_show">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">是否精品</label>
                        <select class="form-control" name="is_show">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">是否新品</label>
                        <select class="form-control" name="is_show">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">是否热销</label>
                        <select class="form-control" name="is_show">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">是否特价</label>
                        <select class="form-control" name="is_show">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">供货商名称idlist</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">商家备注</label>
                        <input type="text" class="form-control" name="sort_order" maxlength="255" value="50">

                        <div class="help-block"></div>
                    </div>
                    <!--添加时间，修改时间-->
                    <div class="form-group">
                        <button type="submit" class="btn btn-success">保存</button>
                    </div>

                </form>
            </div>

        </div>

    </div>
</div>