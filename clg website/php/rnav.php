<div class="col-xs-12 col-sm-3">
 <?php if($page == 'index') { ?>
  <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
    <h3 style="margin:0;">Testimonials</h3>
  </div>
  <div class="panel-body">
   <div class="news" id="testimonial">
         <?php $sqldsd="select * from testimonials order by id desc limit 3";
		      $ressds=mysql_query($sqldsd);
			  while($rs=mysql_fetch_array($ressds)) { ?>
      <div class="media">
    <a href="#" class="pull-left">
      <img alt="64x64" data-src="holder.js/64x64" class="media-object" style="width: 64px;" src="testimonials/<?=$rs[thumb_image]?>">
      </a>
    <h4 style="font-size:13px;"><a href="#"><?=$rs[name]?> , <?=$rs[designation]?></a></h4>
    <p><?=$rs[desc]?></p>
    </div>
    <?php } ?>
    </div>
 <p class="pull-right"><a href="testimonials.php">Read All</a></p>
  </div>
 
</div>
<?php } ?>
  <div class="panel panel-default" style="margin-top:10px;">
  <!-- Default panel contents -->
  <div class="panel-heading">
    <h3 style="margin:0;">Our College Gallery  </h3>
  </div>
  <div class="panel-body">
   <div class="news">
  <?php $sql="select * from gallery_category order by id desc limit 3";
		      $res=mysql_query($sql);
			  while($r=mysql_fetch_array($res)) { 
			  $sqdffdl="select * from gallery where cat_id=$r[id] and thumb_img<>''  order by id desc ";
		      $ressds=mysql_query($sqdffdl);
			 $rss=mysql_fetch_array($ressds);
			 if(mysql_num_rows($ressds)<>0)
{
			  ?> 
   
  <div class="media">
    <a href="gallery-details.php?id=<?=$r[id]?>" class="pull-left">
      <img src="admin-gallery/<?=$rss[thumb_img]?>" alt="64x64" width="64" height="64" class="media-object" style="width: 64px; height: 64px;" data-src="holder.js/64x64">
      </a>
    <h4><a href="gallery-details.php?id=<?=$r[id]?>"><?=$r[category]?></a></h4>
<p class="small"> Posted on <?php echo  date("jS M Y", strtotime($r[add_on])); ?></p>
    </div>
    
    <?php } } ?>
   </div>
    <p class="pull-right"><a href="gallery.php">View All</a></p>
  </div>
 
</div>

</div>