<view class="user"><view class="header" style="{{'height:'+(CustomBar+'px')+';'}}"><view class="cu-bar bg-white" style="{{'height:'+(CustomBar+'px')+';'+('padding-top:'+(StatusBar+'px')+';')}}"><view data-event-opts="{{[['tap',[['back',['$event']]]]]}}" class="action" bindtap="__e"><text class="cuIcon-back"></text></view><view class="content text-bold" style="{{'top:'+(StatusBar+'px')+';'}}">全站实时评论</view><view class="action"></view></view></view><view style="{{'padding:'+(NavBar+'px 10px 0px 10px')+';'}}"></view><view class="cu-card dynamic no-card" style="margin-top:20rpx;"><view class="cu-item"><view class="cu-list menu-avatar comment"><block qq:if="{{commentsList.length==0}}"><view class="no-data">暂时没有评论</view></block><view class="cu-card dynamic no-card" style="margin-top:20rpx;"><block qq:for="{{$root.l0}}" qq:for-item="item" qq:for-index="index" qq:key="index"><block qq:if="{{commentsList.length>0}}"><view class="cu-item"><view class="cu-list menu-avatar comment"><view class="cu-item"><view class="cu-avatar round" style="{{(item.$orig.style)}}"></view><view class="content"><view class="text-grey">{{item.$orig.author+''}}<block qq:if="{{item.$orig.customize&&item.$orig.customize!=''}}"><text class="userlv customize">{{item.$orig.customize}}</text></block></view><view class="text-content text-df break-all"><rich-text nodes="{{item.m0}}"></rich-text></view><view class="bg-grey light padding-sm radius margin-top-sm  text-sm"><view data-event-opts="{{[['tap',[['toInfo',['$0','$1'],[[['commentsList','',index,'cid']],[['commentsList','',index,'contenTitle']]]]]]]}}" class="flex" bindtap="__e"><view class="break-all">{{item.$orig.contenTitle}}</view></view></view><view class="margin-top-sm flex justify-between"><view class="text-gray text-df">{{item.m1}}</view><view><text data-event-opts="{{[['tap',[['commentsAdd',[item.$orig.author+'：'+item.$orig.text,'$0',1,'$1'],[[['commentsList','',index,'coid']],[['commentsList','',index,'cid']]]]]]]}}" class="cuIcon-messagefill text-gray margin-left-sm" bindtap="__e"></text></view></view></view></view></view></view></block></block></view><block qq:if="{{commentsList.length>0}}"><view data-event-opts="{{[['tap',[['loadMore',['$event']]]]]}}" class="load-more" bindtap="__e"><text>{{moreText}}</text></view></block></view></view></view><block qq:if="{{isLoading==0}}"><view class="loading"><view class="loading-main"><image src="../../static/loading.gif"></image></view></view></block></view>