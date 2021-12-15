# 删除public文件夹
rm -rf public

#重新建站
hugo

#添加所有改动
git add .

#获得此次更新日期
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

#上传
git push origin master
