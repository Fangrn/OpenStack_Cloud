<template>

  <div>
    虚拟机实例配置待完成
    <el-row style="margin: 18px 0px 0px 18px ">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/admin/dashboard' }">管理中心</el-breadcrumb-item>
        <el-breadcrumb-item>内容管理</el-breadcrumb-item>
        <el-breadcrumb-item>虚拟机管理</el-breadcrumb-item>
      </el-breadcrumb>
    </el-row>
    <el-card style="margin: 18px 2%;width: 95%">
      <el-table
        stripe
        style="width: 100%">
        <!--<el-table-column
          type="selection"
          width="55">
        </el-table-column>-->
        <el-table-column
          label="虚拟机名称"
          fit>
        </el-table-column>
        <el-table-column
          label="虚拟机访问地址"
          fit>
        </el-table-column>
       
        <el-table-column
          fixed="right"
          label="操作"
          width="120">
           <template slot-scope="scope">
            <el-button
              @click.native.prevent="viewArticle(scope.row.id)"
              type="text"
              size="small">
              查看
            </el-button>
            <el-button
              @click.native.prevent="editArticle(scope.row)"
              type="text"
              size="small">
              编辑
            </el-button>
            <el-button
              @click.native.prevent="deleteArticle(scope.row.id)"
              type="text"
              size="small">
              移除
            </el-button>
          </template>
         
        </el-table-column>
        
      </el-table>
      <!--
      <div style="margin: 20px 0 20px 0;float: left">
        <el-button>取消选择</el-button>
        <el-button>批量删除</el-button>
      </div>-->
     
    </el-card>
    
  </div>
</template>

<script>

    export default {
        name: 'BannerManagement'
    }
</script>

<style scoped>

</style>
