<template>
  <div>
    <i class="el-icon-circle-plus-outline"  @click="dialogFormVisible = true"></i>
    <el-dialog
      title="申请实例"
      :visible.sync="dialogFormVisible"
      @close="clear">
      <el-form v-model="form" style="text-align: left" ref="dataForm">
        <el-form-item label="镜像" :label-width="formLabelWidth" prop="image">
          <el-input v-model="form.image" autocomplete="off" placeholder="不加《》"></el-input>
        </el-form-item>
        <el-form-item label="配置" :label-width="formLabelWidth" prop="config">
          <el-input v-model="form.config" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="数量" :label-width="formLabelWidth" prop="number">
          <el-input v-model="form.number" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="用途" :label-width="formLabelWidth" prop="use">
          <el-input v-model="form.use" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item prop="id" style="height: 0">
          <el-input type="hidden" v-model="form.id" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="onSubmit">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  export default {
    name: 'Application',
    data () {
      return {
        dialogFormVisible: false,
        form: {
          id: '',
          image: '',
          config: '',
          number: '',
          use: '',
         
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
          use: '',
        }
      },
      onSubmit () {
        this.$axios
          .post('/instances', {
            id: this.form.id,
            image: this.form.image,
            config: this.form.config,
            number: this.form.number,
            use: this.form.use,
            
          }).then(resp => {
          if (resp && resp.status === 200) {
            this.dialogFormVisible = false
            this.$emit('onSubmit')
          }
        })
      }
    }
  }
</script>

<style scoped>
  .el-icon-circle-plus-outline {
    margin: 50px 0 0 20px;
    font-size: 100px;
    float: left;
    cursor: pointer;
  }
</style>


