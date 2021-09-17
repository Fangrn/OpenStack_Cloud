<template>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span style="font-weight: bold;font-size: 20px">任务进度</span>
      <!--<el-button style="float: right; padding: 3px 0" type="text">修改</el-button>-->
    </div>
    <div class="block">
      <el-timeline>

        <el-timeline-item timestamp="2020/12/10" placement="top">
          <el-card>
            <h4>OpenStack实例的开机、关机、重启、暂停、挂起、恢复以及远程访问  </h4>
            <p>完成于 2020/12/10</p>
          </el-card>
        </el-timeline-item>

        <el-timeline-item timestamp="2020/12/06" placement="top">
          <el-card>
            <h4>前后端结合让OpenStack实例在前端页面展示、创建、删除  </h4>
            <p>完成于 2020/12/06</p>
          </el-card>
        </el-timeline-item>

        <el-timeline-item timestamp="2020/11/25" placement="top">
          <el-card>
            <h4>使用编写后台管理界面(前端代码)     </h4>
            <p>完成于 2020/11/25</p>
          </el-card>
        </el-timeline-item>
        
        <el-timeline-item timestamp="2020/11/15" placement="top">
          <el-card>
            <h4>编写云平台用户在线注册、申请 </h4>
            <p>完成于 2020/11/15</p>
          </el-card>
        </el-timeline-item>

        <el-timeline-item timestamp="2020/11/12" placement="top">
          <el-card>
            <h4>编写云平台介绍官网，主要介绍这个项目以及各个套餐的介绍等</h4>
            <p>完成于 2020/11/12</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2020/10/25" placement="top">
          <el-card>
            <h4>使用openstack4j编写代码完成虚拟机实例创建删除等一系列操作实现简单Demo</h4>
            <p>完成于 2020/10/25</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2020/10/15" placement="top">
          <el-card>
            <h4>使用openstack4j编写代码调试相关接口接入openstack</h4>
            <p>完成于 2020/10/15</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2020/10/01" placement="top">
          <el-card>
            <h4>调试Apache Guacamole可以通过浏览器在线访问云桌面</h4>
            <p>完成于 2020/10/01</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2020/9/26" placement="top">
          <el-card>
            <h4>搭建Apache Guacamole远程桌面连接网关</h4>
            <p>完成于 2020/9/26</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2020/9/22" placement="top">
          <el-card>
            <h4>使用KVM、QEMU等制作openstack平台镜像并上传至openstack平台</h4>
            <p>完成于 2020/9/22</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2020/9/20" placement="top">
          <el-card>
            <h4>搭建分布式openstack云平台、KVM、Docker等服务</h4>
            <p>完成于 2020/9/20 </p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </div>
  </el-card>
</template>

<script>
  export default {
    name: 'UpdateCard'
  }
</script>

<style scoped>
  .box-card {
    margin-top: 5px;
    width: 988px;
    
    text-align: left;
  }
</style>
