<ul class="breadcrumb"><li><a href="/admin">首页</a></li>
    <li><a href="/admin/address">社区管理</a></li>
    <li class="active">修改社区</li>
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

                <form id="w0" action="/admin/address/save?id={{.address.Addressid}}" method="post">
                    <div class="form-group field-address-addressname">
                        <label class="control-label" for="address-addressname">社区名称</label>
                        <input type="text" id="address-addressname" class="form-control" name="addressname" maxlength="255" value="{{.address.Addressname}}">

                        <div class="help-block"></div>
                    </div>
                    <div class="form-group field-address-areacode">
                        <label class="control-label" for="address-areacode">所属地区</label>
                        <div class="form-control">
                            <label>省/直辖市:</label>
                            <select name="country" class="country">
                                <option>--请选择--</option>
                            {{str2html .tt}}
                            </select>
                            <label>市 :</label>
                            <select name="city" id="city" class="city">
                                <option >--请选择--</option>
                                <option value="{{.city.Code}}" selected>{{.city.Name}}</option>
                            </select>

                            <label>区/县 :</label>
                            <select name="areacode" id="city3" class="city3">
                                <option>--请选择--</option>
                                <option value="{{.acode.Code}}" selected>{{.acode.Name}}</option>
                            </select>
                        </div>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group field-address-addressdetail">
                        <label class="control-label" for="address-addressdetail">详细地址</label>
                        <input type="text" id="address-addressdetail" class="form-control" name="addressdetail" maxlength="255" value="{{.address.Addressdetail}}">

                        <div class="help-block"></div>
                    </div>
                    <div class="form-group field-address-addresstype">
                        <label class="control-label" for="address-addresstype">社区类型</label>
                        <select id="address-addresstype" class="form-control" name="addresstype">
                            <option value="社区" {{if eq .address.Addresstype "社区"}}selected{{end}}>社区</option>
                            <option value="其他" {{if eq .address.Addresstype "其他"}}selected{{end}}>其他</option>
                        </select>

                        <div class="help-block"></div>
                    </div>

                    <div class="form-group field-address-partnerid">
                        <label class="control-label" for="address-partnerid">合作伙伴</label>
                        <select id="address-partnerid" class="form-control" name="partnerid">
                            <option value="0" {{if eq .address.Partnerid 0}}selected{{end}}>自营</option>
                        {{str2html .bb}}
                        </select>

                        <div class="help-block"></div>
                    </div>
                    <div class="form-group field-address-isdefault">
                        <label class="control-label" for="address-isdefault">是否默认</label>
                        <select id="address-isdefault" class="form-control" name="isdefault">
                            <option value="0" {{if eq .address.Isdefault 0}}selected{{end}}>否</option>
                            <option value="1" {{if eq .address.Isdefault 1}}selected{{end}}>是</option>
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