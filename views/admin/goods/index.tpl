<ul class="breadcrumb">
    <li><a href="/admin">首页</a></li>
    {{str2html .m.crumbs}}
</ul>

<div class="list-index">
    <div class="card">
        <div class="content">
            <span><a href="">销售中</a></span>     <span><a href="">仓库中</a></span>      <span><a href="">回收站</a></span>
        </div>
    </div>
    <div class="card">
        <div class="content">
            <form id="w0" action="/admin/address" method="get">
                <div class="form-group">
                    <label class="control-label">商品名称</label>
                    <input type="text" class="form-control" name="goods_name" value="">

                    <div class="help-block"></div>
                </div>
                <div class="form-group">
                    <label class="control-label">商品货号</label>
                    <input type="text" class="form-control" name="goods_sn" value="">

                    <div class="help-block"></div>
                </div>
                <div class="form-group">
                    <label class="control-label">商品分类</label>
                    <div class="form-control">
                        <label>一级分类:</label>
                        <select name="cate1" class="cate1">
                            <option>--请选择--</option>
                            <option value="110000000000">北京市</option>
                        </select>
                        <label>二级分类:</label>
                        <select name="cate2" id="cate2" class="cate2">
                            <option>--请选择--</option>
                        </select>

                        <label>三级分类:</label>
                        <select name="cate3" id="cate3" class="cate3">
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
                <a class="btn btn-success" href="/admin/goods/create">添加商品</a>
            </p>

            <div id="w1" class="grid-view"><div class="summary">共<b>{{.count}}</b>条数据.</div>
                <table class="table table-striped table-bordered"><thead>
                <tr><th>商品ID</th><th>商品名称</th><th>商品货号</th><th>品牌</th><th>分类</th><th>虚拟销量</th><th>发布时间</th><th>更新时间</th><th class="action-column">操作</th></tr>
                </thead>
                    <tbody>
                    {{range $key, $val := .list}}
                    <tr data-key="{{$val.Goods_id}}"><td>{{$val.Goods_id}}</td><td><img src="{{$val.Goods_thumb}}" style="width: 50px; height:50px; float: left"/><p style="display:inline-block;float: left; margin-left: 10px;">{{$val.Goods_name}}<br/><span style="color: red;font-size:12px;">￥{{$val.Shop_price}}</span><span style="color: grey;font-size:12px;text-decoration: line-through; margin-left: 5px;">￥{{$val.Market_price}}</span></p></td><td>{{$val.Goods_sn}}</td><td>{{$val.Brand_id}}</td><td>{{$val.Cat_id}}</td><td>{{$val.Virtual_sales}}</td><td>{{$val.Add_time}}</td><td>{{$val.Last_update}}</td>
                        <td><a href="">编辑</a> | <a href="">下架</a></td></tr>
                    {{end}}
                    </tbody>
                </table>
            {{str2html .pagebar}}
            </div>
        </div>
    </div>
</div>