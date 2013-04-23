<%@Import Namespace="eNCore.eNShared" %>
<%@ Register TagPrefix="uc1" TagName="MyProfileSignOn" Src="~/enSharedControls/CustomControls/BrandControls/eN/MyProfileSignOn.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Branding" Src="~/eNPropertySearch/CustomControls/Branding_uc.ascx" %>
<%-- Page Header START  --%>
   <script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script> 

 <script type="text/javascript"> 
 $(document).ready(function() {
     $('.slideshow').cycle({
         fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
     });
 });
 </script>

  <div class="pos">
   
 	<div class="topbarStatic">
    	 <div class="socialMedia">
              <a href="http://www.facebook.com" target="_blank"><img src="/CustomData/150017450/images/facebook.png" /></a>
              <a href="https://twitter.com" target="_blank"><img src="/CustomData/150017450/images/twitter.png" /></a>
              <a href="http://www.youtube.com" target="_blank"><img src="/CustomData/150017450/images/youtube.png" /></a>
              <a href="http://pinterest.com" target="_blank"><img src="/CustomData/150017450/images/pinterest.png" /></a>
              <a href="http://www.activerain.com" target="_blank"><img src="/CustomData/150017450/images/activerain.png" /></a>
              <a href="http://www.linkedin.com" target="_blank"><img src="/CustomData/150017450/images/linkedin.png" /></a>
         </div>


       <uc1:MyProfileSignOn id="MyProfileSignOn_uc" runat="server" /> 
           <aside class="branding">         
           </aside>
       <uc1:Branding id="Branding_uc" runat="server" /> 
       
    </div>   

 <div class="slideshow">
  <img src="/CustomData/150067243/images/slides/slide1.jpg">
  <img src="/CustomData/150067243/images/slides/slide2.jpg">
  <img src="/CustomData/150067243/images/slides/slide3.jpg">
  <img src="/CustomData/150067243/images/slides/slide4.jpg">
  <img src="/CustomData/150067243/images/slides/slide5.jpg">
  </div>
  
  <div class="custombanner">
  	  <img src="/CustomData/150067243/images/custombanner.png">
  </div>

</div><!-- end of header > .pos -->  
 
