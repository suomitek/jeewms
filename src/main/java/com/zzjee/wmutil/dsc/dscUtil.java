package com.zzjee.wmutil.dsc;

import com.xiaoleilu.hutool.http.HttpUtil;
import com.zzjee.md.entity.MdGoodsEntity;
import com.zzjee.wmutil.uasloginres;
import org.jeecgframework.core.util.ApplicationContextUtil;
import org.jeecgframework.core.util.JSONHelper;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.service.SystemService;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class dscUtil {


//    dsc.user.list.get



//    page	Number	可选	1	默认	列表分页当前页
//    page_size	Number	可选	15	默认	列表分页每页显示条数
//    format	type	必须	json	json或xml	接口类型
//    dsc.goods.list.get



    public static void updateGoodsFromDsc(){
        String res = getGoods("1");
        System.out.println(res);
        int pagecount = 1;
        goodsListRes reslist =   JSONHelper.fromJsonToObject(res,goodsListRes.class);
        savegoodstowm(reslist);
        pagecount = reslist.getInfo().getPageCount();
        for(int i =2;i<=pagecount;i++){
            String page = Integer.toString(i);
            res = getGoods(page);
            reslist =   JSONHelper.fromJsonToObject(res,goodsListRes.class);
            savegoodstowm(reslist);
        }
    }

    public static String getGoods(String page){
        String baseurl = ResourceUtil.getConfigByName("dsc.url");
        Map<String, Object> paramMap = getbasepara();
        paramMap.put("method","dsc.goods.list.get");
        paramMap.put("page",page);
        String res = HttpUtil.get(baseurl,paramMap);
        return   res;
    }


    public static void savegoodstowm(goodsListRes reslist){
        String cusCode = ResourceUtil.getConfigByName("dsc.cuscode");
        SystemService systemService =ApplicationContextUtil.getContext().getBean(SystemService.class);
        for( goodsListRes.InfoBean.ListBean   t:reslist.getInfo().getList()){
            MdGoodsEntity mdgoos = systemService.findUniqueByProperty(MdGoodsEntity.class,"shpBianMakh",t.getGoodsSn());
            if(mdgoos==null){
                mdgoos = new MdGoodsEntity();
            }
            mdgoos.setSuoShuKeHu(cusCode);
            mdgoos.setShpBianMakh(t.getGoodsSn());
            mdgoos.setShpBianMa(t.getGoodsSn());
            mdgoos.setShpMingCheng(unicodeDecode(t.getGoodsName()));
            mdgoos.setShpTiaoMa(t.getBarCode());
            mdgoos.setChlKongZhi("N");
            mdgoos.setChlShl("1");
            mdgoos.setShlDanWei("个");
            mdgoos.setJshDanWei("个");
            mdgoos.setBzhiQi("360");
            mdgoos.setChpShuXing(t.getCatId());
            mdgoos.setCfWenCeng("常温");
            systemService.saveOrUpdate(mdgoos);
        }
    }



    public  static Map<String, Object> getbasepara(){
        Map<String, Object> paramMap = new HashMap<>();
        String baseukey = ResourceUtil.getConfigByName("dsc.key");
        paramMap.put("app_key",baseukey);
        paramMap.put("format","json");
        return paramMap;
    }

    /**
     * @Title: unicodeDecode
     * @Description: unicode解码
     * @param str
     * @return
     */
    public static String unicodeDecode(String string) {
        Pattern pattern = Pattern.compile("(\\\\u(\\p{XDigit}{4}))");
        Matcher matcher = pattern.matcher(string);
        char ch;
        while (matcher.find()) {
            ch = (char) Integer.parseInt(matcher.group(2), 16);
            string = string.replace(matcher.group(1), ch + "");
        }
        return string;
    }
}
