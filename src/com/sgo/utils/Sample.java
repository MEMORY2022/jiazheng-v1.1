package com.sgo.utils;


import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;

public class Sample {

    static final String product = "Dysmsapi";
    static final String domain = "dysmsapi.aliyuncs.com";
    static final String accessKeyId ="************";
    static final String accessKeySecret = "*****************";

    public static SendSmsResponse sendSmsResponse(String phone, String code) throws ClientException {
        System.setProperty("sun.net.client.defaultConnectTimeout","10000");
        System.setProperty("sun.net.client.defaultReadTimeout","10000");
        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hanghou",accessKeyId,accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou","cn-hangzhou",product,domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //组装请求对象-具体描述见控制台，文档部分类容
        SendSmsRequest request = new SendSmsRequest();
        //发送手机号
        request.setPhoneNumbers(phone);
        //短信签名
        request.setSignName("阿里云短信测试");
        //模板
        request.setTemplateCode("SMS_154950909");
        //模板中的变量替换json串，如模板类容为“”亲爱的${name},你的验证码为${code}“时，此时的值为
        request.setTemplateParam("{\"code\":"+code+"}");

        //选填-上行短信扩展码（无特殊需求用户请忽略次字段）
        // request.setSmsUpExtendCode("90997");

        //可选：setOutId为提供给业务方扩展字段，最终在短信回执消息中将此值带回给调用者
        //request.setOutId("yourOutId");

        //hint 此处可能会抛出异常。注意catch
        SendSmsResponse sendSmsResponse  = null;
        try {
            sendSmsResponse = acsClient.getAcsResponse(request);
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return sendSmsResponse;
    }



}
