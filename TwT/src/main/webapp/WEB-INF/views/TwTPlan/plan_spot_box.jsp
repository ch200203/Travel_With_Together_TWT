<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><!-- 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
<script type="text/javascript">
   $(document).ready(function() {
      // 도시변경하기
      $(".city_item").on("click", function() {
         $(".city_item.on").children(".check_img").hide();
         $(".city_item").removeClass("on");
         $(this).addClass("on"); // 구분자 on 추가
         
            if($(".city_item").has("on")){
               $(this).children(".check_img").show();
               var city_name = $(".city_item.on").data("ci_name");
               $(".list_title").children("span").text(city_name);
            }
            var check_city_item = $(".city_item.on").data("code");
            alert("check :" + check_city_item);
            
            // 도시변경에 따른 목록 새로고침
            var city_code = $(".city_item.on").data("code"); // 현재 선택된 도시 코드 받아오기
            var name_num = $(".list_box").children(".day_spot_item").length; // 전체 검색 시 가져올 것들 갯수
            
            for(i = 0; i < name_num + 1; i++){
               var city_val = $(".list_box").children(".day_spot_item").eq(i).data("city");
               if(city_code == city_val){ 
                  $(".list_box").children(".day_spot_item").eq(i).show();
               } else {
                  $(".list_box").children(".day_spot_item").eq(i).hide();
               }
            }
         });
   });
</script>
</head>
<body>
<!-- 스팟 리스트 box-->
        <div id="city_list" data="87" style="display: block; bottom:2px;">
              <div class="list_title" style="background: #fc3c3c;"><span>${cityvo.city_Name}</span>
                 <div class="list_title_option_menu" data-is_open="off">&nbsp;도시 변경<i class="fas fa-caret-down"></i></div>
              </div>
               <div id="on_city_close_btn" style="background:url('${pageContext.request.contextPath}/resources/images/plan/city_close_btn.png');"></div>
               <div class="clear"></div>
               <div class="city_change_box">
                  <!-- <div class="city_text_search_box"><input type="text" class="city_text_search_input" id="city_search_key"></div>
              <div class="city_search" style="display: none;"></div> -->
              <!-- 도시 변경  -->
                    <div class="city_items" data="87" style="height:100%;">
                       <div class="city_item on" data="87" data-ci_name="${cityvo.city_Name}" data-lat="${cityvo.city_Lati}" data-lng="${cityvo.city_Long}" data-ss_id="undefined" data-code="${cityvo.city_Code}">
                          <div class="fl ci_img"><img src="${pageContext.request.contextPath}/resources/images/plan/city/${cityvo.city_Img}"></div>
                          <div class="fl">${cityvo.city_Name},&nbsp;<span>태국</span></div>
                     <div class="check_img" style="display: block; position: relative; right: -37%;"><i class="fas fa-check"></i></div>                          
                          <div class="clear"></div>
                       </div>
                       <div class="clear"></div>
<!--                        <div style="width:100%;height:0px;border-bottom:solid 1px #cacaca;"></div>
                       <div class="city_item_title">태국 내 다른 도시</div> -->
                       <c:forEach items="${allCity}" var="city">
                          <c:if test="${city.city_Code ne citycode}">
                             <div class="clear"></div>
                             <div class="city_item" data="" data-ci_name="${city.city_Name}" data-lat="${city.city_Lati}" data-lng="${city.city_Long}" data-ss_id="null" data-code="${city.city_Code}">
                                <div class="fl ci_img"><img src="${pageContext.request.contextPath}/resources/images/plan/city/${city.city_Img}"></div>
                                <div class="fl">${city.city_Name},&nbsp;<span>태국</span></div>
                        <div class="check_img" style="display: none; position: relative; right: -37%;"><i class="fas fa-check"></i></div>                          
                                <div class="clear"></div>
                             </div>
                          </c:if>
                       </c:forEach>
                    </div>
                    <!-- 도시 변경 end -->
            </div>
               <div class="list_search_full_box">
                  <div class="list_search_box">
               <input type="text" id="input_search" placeholder="장소 검색">
               <div style="margin-left:20px;margin-top:5px;">
                  <span id="type_city" type="radio" class="radio on" data-val="city" data-on="on" data-name="search_type" style="color:#808080">
                  <span class="et-radio" style="padding-top: 4px;">&nbsp;<!-- 수정@@ --><i class="far fa-check-circle check"></i></span>
                  <span class="et-radio_txt">도시내 검색&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                  <span id="type_total" type="radio" class="radio" data-val="total" data-name="search_type" style="color:#808080" data-on="off">
                  <span class="et-radio" style="padding-top: 4px;">&nbsp;<!-- 수정@@ --><i class="far fa-circle check"></i></span><span class="et-radio_txt">전체검색</span></span>
                  <input type="hidden" name="search_type" id="search_type" class="news" value="city">
               </div>
            </div>
                   <div class="list_category_box" style="border-bottom: solid #dadada 1px; padding-left:37px;">
                      <div class="list_cat_item fl on" data="1" data-type="total"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_000_c.png"></div>
                      <div class="list_cat_item fl" data="2" data-type="랜드마크"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_300_a.png"></div>
                       <div class="list_cat_item fl" data="3" data-type="식당가"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_200_a.png"></div>
                       <div class="list_cat_item fl" data="4" data-type="쇼핑"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_400_a.png"></div>
                       <div class="clear"></div>             
                   </div>
                 </div>
               <div class="list_box_overlay"></div>
               <!-- 스팟 리스트 -->
           <div class="list_box connectedSortable" style="height: 441px;">
               <c:set var="count" value="0"></c:set>
               <c:forEach items="${allSpot}" var="spot" varStatus="status">
                  <div class="day_spot_item ui-draggable" id="spot_${status.index}" data-seq="${status.index}" data-city="${spot.city_Code}" data-type="${spot.tp_Type}" data-name="${spot.tp_Name}" data-img="${spot.tp_Img}" data-addr="${spot.tp_Addr}" data-con="${spot.tp_Content}" data-set_day="0" data-rel_srl="4740" data-pl_type="0" data-no="${spot.tp_Code}" data-lat="${spot.tp_Lati}" data-lng="${spot.tp_Long}" data-clip_yn="n" data-pl_cat="301" data-ci="87" data-img="${spot.tp_Img}">
                     <div class="img_box fl"><img src="${pageContext.request.contextPath}/resources/images/plan/${spot.city_Code}/${spot.tp_Img}"></div>
                     <div class="fl info_box">
                        <div class="title">${spot.tp_Name}</div>
                        <div class="sub">${spot.tp_Type}</div>
                        <div class="sub">
                           <!-- <div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>252</div> -->
                           <div class="clear"></div>
                        </div>
                        <!-- @@ 수정 필요 @@ -->
                        <div class="sub include_pn_day" style="color:#fc3c3c">DAY1</div>
                     </div>
                     <div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
                     <div class="clear"></div>
                  </div>
                  <c:set var="count" value="${count+1}"></c:set>
               </c:forEach>
               <div class="aa" style="display:none;" data-count="${count}"></div>
      </div>
    </div><!-- 스팟 리스트 end -->
</body>
</html>