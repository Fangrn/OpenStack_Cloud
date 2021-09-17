<template>
<div>
   <div style="text-align: left">
   <el-button class="add-button" type="success" @click="dialogFormVisible = true">申请实例</el-button>
    <el-dialog
      title="申请实例"
      :visible.sync="dialogFormVisible"
      @close="clear">
      <el-form v-model="form" style="text-align: left" ref="dataForm">
        <el-form-item label="镜像" :label-width="formLabelWidth" prop="image">
          <el-input v-model="form.image" autocomplete="off" placeholder="请输入镜像名称"></el-input>
        </el-form-item>
        <el-form-item label="配置" :label-width="formLabelWidth" prop="config">
          <el-input v-model="form.config" autocomplete="off" placeholder="请输入实例配置 格式:CPU: 核、内存: GB/MB、磁盘: GB"></el-input>
        </el-form-item>
        <el-form-item label="数量" :label-width="formLabelWidth" prop="number">
          <el-input v-model="form.number" autocomplete="off" placeholder="请输入实例的数量"></el-input>
        </el-form-item>
        <el-form-item label="用途" :label-width="formLabelWidth" prop="uses">
          <el-input v-model="form.uses" autocomplete="off" placeholder="请说明详细用途"></el-input>
        </el-form-item>
        <el-form-item prop="id" style="height: 0">
          <el-input type="hidden" v-model="form.id" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button  plain type="primary" @click="onSubmit(),open1()" >确 定</el-button>
        
      </div>
    </el-dialog>
  </div>
  <hr>
  <div class="parent">
    <!--  虚拟机实例  -->

<!--    Win7-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/windows-server.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">Win7
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 4核 - 内存 8GB - 系统盘 30GB</b></h4>
            <h4>
                <b>10.0.0.142</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>关机 </span></span>
            </h4>
        </div>
    </div>

<!--    Debian-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/CentOS.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">CentOS
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 1核 - 内存 128MB - 系统盘 1GB</b></h4>
           <h4>
                <b>10.0.0.99</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>运行中 </span></span>
            </h4>
        </div>
    </div>

<!--    wordpress-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/windows-server.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">Win7
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 1核 - 内存 4GB - 系统盘 30GB</b></h4>
            <h4>
                <b>10.0.0.168</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>关机 </span></span>
            </h4>
        </div>
    </div>
<!--deepin-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/LAMP.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">deepin
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 4核 - 内存 4GB - 系统盘 30GB</b></h4>
            <h4>
                <b>101.32.181.181</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>运行中 </span></span>
            </h4>
           
        </div>
    </div>

<!--    Discuz-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/discuz.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">Discuz
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 1核 - 内存 1GB - 系统盘 25GB</b></h4>
            <h4>
                <b>101.32.181.181</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>运行中 </span></span>
            </h4>
        </div>
    </div>

    <!--   nodejs-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/nodejs.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">Node.js
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 1核 - 内存 1GB - 系统盘 25GB</b></h4>
            <h4>
                <b>101.32.181.181</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>运行中 </span></span>
            </h4>
        </div>
    </div>
    <!--   宝塔Linux-->
    <div class="card">
        <div class="_lh-server-list__item-header-left-col">
            <img src="https://imgcache.qq.com/open_proj/proj_qcloud_v2/tc-console/tea-static-lighthouse/src/styles/slice/bt-panel.svg" class="tea-align-middle tea-mr-1n" style="height: 32px;">
            <span class="tea-fz-reset _lh-server-list__item-header-tit app-lighthouse-text-with-icon ">Node.js
              <i class="glyphicon glyphicon-pencil"></i>
            </span>
        </div>

        <div class="container1">
            <h4><b>CPU 1核 - 内存 1GB - 系统盘 25GB</b></h4>
            <h4>
                <b>101.32.181.181</b>
                 <span class="" style="font-size: 12px;">
            <span class="app-lighthouse-badge tea-mr-1n app-lighthouse-badge--ring is-success-dark"></span>
            <span>运行中 </span></span>
            </h4>
        </div>
    </div>


 <div class="card">
    <upload-excel-component :on-success="handleSuccess" :before-upload="beforeUpload" />
    <el-table :data="tableData" border highlight-current-row style="width: 100%;margin-top:20px;">
      <el-table-column v-for="item of tableHeader" :key="item" :prop="item" :label="item" />
    </el-table>
  </div>
</div>


  
  </div>
  
  
</template>

<script>
// 导入上传excel
import UploadExcelComponent from '../../../UploadExcel/index'

  export default {
    name: 'Application',
    components: { UploadExcelComponent },
    data () {
      return {
        // 表数据
      tableData: [],
      // 表头
      tableHeader: [],
        dialogFormVisible: false,
        form: {
          id: '',
          image: '',
          config: '',
          number: '',
          uses: ''
         
        },
        formLabelWidth: '120px'
      }
    },
    methods: {
      clear () {
        this.form = {
           id: '',
          image: '',
          config: '',
          number: '',
          uses: ''
        }
      },
      // 右边实例申请完成后提醒
       open1() {
        this.$notify({
          title: '成功',
          message: '申请实例成功',
          type: 'success'
        });
      },
      onSubmit () {
        this.$axios
          .post('/instances', {
            id: this.form.id,
            image: this.form.image,
            config: this.form.config,
            number: this.form.number,
            uses: this.form.uses
            
          }).then(resp => {
          if (resp && resp.status === 200) {
            this.dialogFormVisible = false
            this.$emit('onSubmit')
          }
        })
      },

      // 上传excel内容
      beforeUpload(file) {
      const isLt1M = file.size / 1024 / 1024 < 1
      if (isLt1M) {
        return true
      }
      this.$message({
        message: 'Please do not upload files larger than 1m in size.',
        type: 'warning'
      })
      return false
    },
    handleSuccess({ results, header }) {
      this.tableData = results
      this.tableHeader = header
    }
  }
    }
  
</script>

<style scoped>

 h4{
     text-align: left;
 } 
   .add-button {
    margin: 18px 0 0 10px;
  }

  .parent {
    width: 100%;
    height: 150px;
    display: flex;
    flex-flow: row wrap;
    align-content: flex-start;
  }

.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    flex: 0 0 30%;
    height: 150px;
    border-radius: 5px;
    background-color: #fff;
    box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);
    margin-top: 1%;
   margin-left: 1%;
   margin-right: 1%;
    margin-bottom: 1%;
    box-sizing: border-box
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}


img {
    border-radius: 5px 5px 0 0;
    margin-left: 10px;
    margin-top: 10px;
    border-style: none;
    border: 0;
}

.container1 {
    padding: 2px 16px;
    
}


span{
    margin-top: 0%;
}


.app-lighthouse-badge.app-lighthouse-badge--ring {
    width: 10px;
    height: 10px;
    border-width: 2px;
    border-style: solid;
    background-color: #fff!important;
}
.app-lighthouse-badge.app-lighthouse-badge--dot, .app-lighthouse-badge.app-lighthouse-badge--ring {
    font-size: 0;
    padding: 0;
    border-radius: 100%;
    vertical-align: middle;
}
.app-lighthouse-badge.is-success-dark {
    background-color: #0abf5b;
    border-color: #0abf5b;
    color: #fff;
}

.app-lighthouse-badge.is-error-dark {
    background-color: #bb1100;
    border-color: #bb1100;

}

.app-lighthouse-badge.is-PAUSED-dark {
    background-color: orange;
    border-color: orange;

}
.app-lighthouse-badge.is-SUSPENDED-dark {
    background-color: #f98b8b;
    border-color: #f98b8b;

}

.app-lighthouse-badge {
    display: inline-block;
    font-size: 12px;
    max-width: 100%;
    height: 20px;
    line-height: 20px;
    padding: 0 5px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

._lh-server-list__item-header-left-col {
    display: flex;
    flex-direction: row;
    align-items: center;
}
.tea-mr-1n {
    margin-right: 4px !important;
}
.tea-align-middle {
    vertical-align: middle !important;
}

._lh-server-list__item-header-tit {
    display: inline-block;
    max-width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    word-break: break-all;
    padding-right: 26px;
    position: relative;
    font-weight: 600;
}
.app-lighthouse-text-with-icon {
    padding-right: 16px;
    position: relative;
    min-width: 16px;
}
.tea-fz-reset {
    font-size: 12px;
}

.pull-right {
    float: right !important;
}
</style>


