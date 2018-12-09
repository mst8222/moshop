        <ul class="breadcrumb">
            <li><a href="/admin">首页</a></li>
            {{str2html .m.crumbs}}
        </ul>

        <div class="list-index">

        <div class="card">
            <div class="content">
                <p>
                    <a class="btn btn-success" href="/admin/category/create">添加分类</a>
                </p>

                <div id="w1" class="grid-view"><div class="summary">共<b>{{.count}}</b>条数据.</div>
                    <table class="table table-striped table-bordered"><thead>
                    <tr><th>分类ID</th><th>分类名称</th><th>上级分类ID</th><th>排序序号</th><th>是否显示在导航栏</th><th>是否显示</th><th class="action-column">操作</th></tr>
                    </thead>
                        <tbody>
        {{range $key, $val := .list}}
        <tr data-key="{{$val.Cat_id}}"><td>{{$val.Cat_id}}</td><td>{{$val.Cat_name}}</td><td>{{$val.Parent_id}}</td><td>{{$val.Sort_order}}</td><td>{{$val.Show_in_nav}}</td><td>{{$val.Is_show}}</td><td><a href="/admin/category?cate=2&id={{$val.Cat_id}}" title="下级分类">下级分类</a> <a href="/admin/category/update?id={{$val.Cat_id}}" title="修改">修改</a> <a href="/admin/category/delete?id={{$val.Cat_id}}" title="删除" data-confirm="确定删除?" data-method="post">删除</a></td></tr>
        {{end}}

                        </tbody></table>
                </div>
            </div>
        </div>
    </div>