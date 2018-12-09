        <ul class="breadcrumb">
            <li><a href="/admin">首页</a></li>
            <li class="active">{{.m.crumbs}}</li>
        </ul>

        <div class="list-index">
            <div class="card">
                <div class="content">
                    <script src="/static/vendors/jquery-3.1.1.min.js"></script>
                    <script type="text/javascript">
                        $(document).ready(function()  {

                            //一级改变事件，把一级ID传递给接口，返回二级内容 //flid=3 三级
                            $(".country").change(function()  {
                                var id=$(this).val();
                                //alert("HTML: " + id);
                                var dataString = 'id='+ id ; //flid=2 二级
                                // alert("HTML: " + dataString);

                                $.ajax ({
                                    type: "GET",
                                    url: "/admin/area/select",
                                    data: dataString,
                                    cache: false,
                                    success: function(html)  {
                                        $("#city").html(html);
                                    }
                                });
                            });

                            //二级改变事件，把二级ID传递给接口，返回三级内容 //flid=3 三级
                            $(".city").change(function()  {
                                var id=$(this).val();
                                //alert("HTML: " + id2);
                                var dataString = 'id='+ id ;  //flid=3 三级
                                //alert("HTML: " + dataString);
                                $.ajax ({
                                    type: "GET",
                                    url: "/admin/area/select",
                                    data: dataString,
                                    cache: false,
                                    success: function(html)  {
                                        $("#city3").html(html);
                                        //hideLoader();
                                    }
                                });
                            });
                        });
                    </script>
                    <form id="w0" action="/admin/address" method="get">

                        <div class="form-group field-addresssearch-addressname">
                            <label class="control-label" for="addresssearch-addressname">社区名称</label>
                            <input type="text" id="addresssearch-addressname" class="form-control" name="addressname" value="{{.addressname}}">

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group field-address-areacode">
                            <label class="control-label" for="address-areacode">所属地区</label>
                            <div class="form-control">
                                <label>省/直辖市:</label>
                                <select name="country" class="country">
                                    <option>--请选择--</option>
                                    <option value="110000000000">北京市</option><option value="120000000000">天津市</option><option value="130000000000">河北省</option><option value="140000000000">山西省</option><option value="150000000000">内蒙古自治区</option><option value="210000000000">辽宁省</option><option value="220000000000">吉林省</option><option value="230000000000">黑龙江省</option><option value="310000000000">上海市</option><option value="320000000000">江苏省</option><option value="330000000000">浙江省</option><option value="340000000000">安徽省</option><option value="350000000000">福建省</option><option value="360000000000">江西省</option><option value="370000000000">山东省</option><option value="410000000000">河南省</option><option value="420000000000">湖北省</option><option value="430000000000">湖南省</option><option value="440000000000">广东省</option><option value="450000000000">广西壮族自治区</option><option value="460000000000">海南省</option><option value="500000000000">重庆市</option><option value="510000000000">四川省</option><option value="520000000000">贵州省</option><option value="530000000000">云南省</option><option value="540000000000">西藏自治区</option><option value="610000000000">陕西省</option><option value="620000000000">甘肃省</option><option value="630000000000">青海省</option><option value="640000000000">宁夏回族自治区</option><option value="650000000000">新疆维吾尔自治区</option>
                                </select>
                                <label>市 :</label>
                                <select name="city" id="city" class="city">
                                    <option>--请选择--</option>
                                </select>

                                <label>区/县 :</label>
                                <select name="areacode" id="city3" class="city3">
                                    <option value="">--请选择--</option>
                                </select>
                            </div>

                            <div class="help-block"></div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">搜索</button>        <button type="reset" class="btn btn-default">重置</button>    </div>

                    </form>
                </div>
            </div>

        <div class="card">
            <div class="content">
                <p>
                    <a class="btn btn-success" href="/admin/address/create">添加社区</a>
                </p>

                <div id="w1" class="grid-view"><div class="summary">共<b>{{.count}}</b>条数据.</div>
                    <table class="table table-striped table-bordered"><thead>
                    <tr><th>点位ID</th><th>点位名称</th><th>所属地区</th><th>详细地址</th><th>点位类型</th><th>是否加盟社区</th><th>是否默认</th><th class="action-column">操作</th></tr>
                    </thead>
                        <tbody>
        {{range $key, $val := .list}}
        <tr data-key="{{$val.Addressid}}"><td>{{$val.Addressid}}</td><td>{{$val.Addressname}}</td><td>{{$val.Areacode}}</td><td>{{$val.Addressdetail}}</td><td>{{$val.Addresstype}}</td><td>{{$val.Partnerid}}</td><td>{{$val.Isdefault}}</td><td><a href="/admin/address/update?id={{$val.Addressid}}" title="修改地区">修改</a> <a href="/admin/address/delete?id={{$val.Addressid}}" title="删除地区" data-confirm="确定删除?" data-method="post">删除</a></td></tr>
        {{end}}

                        </tbody></table>
                    {{str2html .pagebar}}
                </div>
            </div>
        </div>
    </div>