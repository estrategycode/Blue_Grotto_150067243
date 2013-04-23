<%@Import Namespace="eNCore.eNShared" %>
<%@ Register TagPrefix="cc1" Namespace="UIeNPropertySearch" Assembly="UIeNPropertySearch" %>
<%--<%@ Register TagName="SimpleSearch" TagPrefix="uc1"Src="~/eNPropertySearch/CustomControls/SimpleSearch.ascx" %>--%>
<%@ Register TagName="FeaturedListing" TagPrefix="uc1" Src="~/eNPropertySearch/CustomControls/FeaturedListing.ascx" %>
<%@ Register Tagname="HomeFinderLeadCapture" tagprefix="uc1"  src="~/eNPropertySearch/CustomControls/HomeFinderLeadCapture.ascx"  %>
<%@ Register Tagname="NeighborhoodValueLeadCapture" tagprefix="uc1" src="~/eNPropertySearch/CustomControls/NeighborhoodValueLeadCapture.ascx"  %>
<%@ register tagname="RequestInfo" tagprefix="uc1" src="~/eNPropertySearch/CustomControls/BrandControls/EN/Requestinfo.ascx"  %>
<%@ Register tagname="LocalAreaPropertySearch_EN" tagprefix="uc1" src="~/eNPropertySearch/CustomControls/LocalAreaPropertySearch_EN.ascx"  %>
<%@ Register TagPrefix="cc1"  TagName="SearchMaster"  Src="~/eNPropertySearch/CustomControls/GenericControls/SearchMaster.ascx" %>

<style>
#testimonials {
width:690px;
background:#E7E9E6 url() left top repeat-x;
border:1px solid #D8D9D6;
margin:10px 0; 
}
#testimonials blockquote{
padding:10px;
width:660px !important;
font-family:Georgia, "Times New Roman", Times, serif;
font-style:italic;
color:#808080;
display:block;
}
 
#testimonials blockquote p{
margin: 0 !important;padding: 5px!important;
 
}
#testimonials blockquote cite {
font-style: normal;
display: block; 
text-transform: uppercase;
font-weight: bold;
font-style:italic;
color: #555;
padding-left:5px;
margin-top:10px;
}
#testimonialsfullbox{border:1px solid #ccc; padding:6px; margin-bottom:8px;}
#nav a{margin:2px;}
</style>

<script type="text/javascript">
$(document).ready(function() {
   $('#testimonials')
	.after('<div id="nav">')
	.cycle({
        fx: 'fade', // choose your transition type, ex: fade, scrollUp, scrollRight, shuffle
		pager:  '#nav'
     });
});
</script>
<div class="main_content_holder">
	<%-- <uc1:SimpleSearch id="SimpleSearch_uc" runat="server" />--%>
	<cc1:SearchMaster ID="mySearchMaster_uc"  runat="server" visible="true" />
   <div id="buttonbank">  
<div class="box">
            <h3>Open Houses</h3>
            <p>Take a peek inside your dream home. What open houses are scheduled?</p>
            <a class="readMore" href="/enPropertySearch/openhouse.aspx">Read more &rarr;</a>
         </div><div class="box">
            <h3>Featured Listings</h3>
            <p>Let us take you through a tour of some of my exclusive featured listings!</p>
            <a class="readMore" href="/enPropertySearch/FeaturedListings.aspx">Read more &rarr;</a>
         </div><div class="box">
            <h3>Mortgage Info</h3>
            <p>Being educated about the home buying process can make the whole process so much smoother.</p>
            <a class="readMore" href="/Buyers/default.aspx">Read more &rarr;</a>
         </div><div class="box last">
            <h3>Contact Us</h3>
            <p>See something you like? Want more information? Feel free to contact us today!</p>
            <a class="readMore" href="/ContactUs/default.aspx">Read more &rarr;</a>
         </div>
</div>
	<div class="colmid">
		<div class="colleft">
			<section id="col-center" class="col">
           
				<div class="pos">
                <div id="testimonialsfullbox">
                <div id="testimonialheader">Testimonials</div>
<div id="testimonials">
 
 <blockquote><p>"...I've never had a sale go so smoothly, especially in these real estate trying times.  She helped us get the loan, the inspection, and even did the walk thru for us because we couldn't get down to Florida for it. She was fantastic and patient with us through the whole process, and we can't thank her enough!  Thanks Again!"
                <cite>&ndash;Martin - NY</cite></p></blockquote>
 
                <blockquote><p>"Shawna is an extraordinary realtor. Extremely dedicated in helping her clients find that perfect home, her creative energy infuses all aspects of the process making buying and selling a home an enjoyable experience..."
                <cite>&ndash;Sandra - LA</cite></p></blockquote>
 
                <blockquote><p>"Thank you so much for all your help in selling our house. Your marketing strategy and pricing was exactly what we needed to sell our house in a short amount of time..."
                <cite>&ndash;Jason - MA</cite></p></blockquote>
 
</div>
</div>
<!--end testimonials-->


					<uc1:FeaturedListing id="FeaturedListing_uc" runat="server" FeatureListingHeader="Featured Listings" />
					<div class="module module_featuredsearches">
						<header>
							<h3>
								Featured Searches
							</h3>
						</header>
						<section>
							<cc1:eNREMSBucketSearches id="enREMSBucketSearches_uc" LinkPage="~/enPropertySearch/FeaturedSearch.aspx" BSLinkPage="~/enPropertySearch/FeaturedSearches.aspx" runat="server" >
								<cc1:eNREMSBucketSearch SortIndex="1" cssName="fs1" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="4" cssName="fs2" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="3" cssName="fs3" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="2" cssName="fs4" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="5" cssName="fs5" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="6" cssName="fs6" submitprompt="search" />
							</cc1:enREMSBucketSearches>
						</section>
						<footer>
						</footer>
					</div>
				<div class="module module_customcontent">
                        	<section>
                                <%= m_objContent.GetParagraphVal("Home_Page_Content", "<header><h2>searching for a new home?</h2></header>< /br> Custom Content")%>                               
                            </section>
                            <footer>
                            </footer>
                        </div>
				</div>
			</section>
			<section id="col-side-a" class="col">
				<div class="pos">
                
				</div>
			</section>
			<section id="col-side-b" class="col">
				<div class="pos">
					<uc1:RequestInfo ID="RequestInfo_Uc" runat="server" SystemEventType="21" />
					<div class="module module_localpropertysearch">
						<uc1:LocalAreaPropertySearch_EN ID="LocalAreaPropertySearch_uc" runat="server" />
					</div>
					<div class="homelinks">
						<uc1:HomeFinderLeadCapture id="HomeFinderLeadCapture_uc" runat="server" />
						<uc1:NeighborhoodValueLeadCapture id="NeighborhoodValueLeadCapture_uc" runat="server" />
					</div>
				</div>
			</section>
		</div>
	</div>
</div>