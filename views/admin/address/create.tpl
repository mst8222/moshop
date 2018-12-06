    <ul class="breadcrumb"><li><a href="/admin">首页</a></li>
        <li><a href="/admin/address/index">社区管理</a></li>
        <li class="active">添加社区</li>
    </ul>
    <div class="form-create">
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

        <div class="form-form">

            <div class="card">
                <div class="content">

                    <form id="w0" action="/admin/address/save" method="post">
                        <div class="form-group field-address-addressname">
                            <label class="control-label" for="address-addressname">社区名称</label>
                            <input type="text" id="address-addressname" class="form-control" name="addressname" maxlength="255">

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
                                    <option selected="selected">--请选择--</option>
                                </select>

                                <label>区/县 :</label>
                                <select name="areacode" id="city3" class="city3">
                                    <option>--请选择--</option>
                                </select>
                            </div>

                            <div class="help-block"></div>
                        </div>

                        <div class="form-group field-address-addressdetail">
                            <label class="control-label" for="address-addressdetail">详细地址</label>
                            <input type="text" id="address-addressdetail" class="form-control" name="addressdetail" maxlength="255">

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group field-address-addresstype">
                            <label class="control-label" for="address-addresstype">社区类型</label>
                            <select id="address-addresstype" class="form-control" name="addresstype">
                                <option value="社区">社区</option>
                                <option value="其他">其他</option>
                            </select>

                            <div class="help-block"></div>
                        </div>

                        <div class="form-group field-address-partnerid">
                            <label class="control-label" for="address-partnerid">合作伙伴</label>
                            <select id="address-partnerid" class="form-control" name="partnerid">
                                <option value="">自营</option>
                            {{range $key, $val := .busipartner}}
                                <option value="{{$val.Busipartnerid}}">{{$val.Busipartnername}}</option>
                            {{end}}
                            </select>

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group field-address-isdefault">
                            <label class="control-label" for="address-isdefault">是否默认</label>
                            <select id="address-isdefault" class="form-control" name="isdefault">
                                <option value="0">否</option>
                                <option value="1">是</option>
                            </select>

                            <div class="help-block"></div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">保存</button>    </div>

                    </form>
                </div>

            </div>

        </div>
    </div>