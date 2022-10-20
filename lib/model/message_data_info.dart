import 'dart:core';

// MessageDataInfo 类
class MessageDataInfo{
  String ? avatar;
  String ? title;
  String ? subTitle;
  String ? time;
  MessageType ?type;
  MessageDataInfo({this.avatar,this.title,this.subTitle,this.time,this.type});
}

// MessageType 枚举
enum MessageType{
  system,//系统信息
  public,//公共信息
  chat,//聊天信息
  group//群聊信息
}

//Mock Message数据
List<MessageDataInfo>  messageDataInfo = [
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201907%2F18%2F20190718182706_wyhhd.thumb.400_0.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668844151&t=632e65f1c6ca66f8aeb00f3c8c55844f',
      subTitle: '我是快乐的大耳朵我是快乐的大耳朵我是快乐的大耳朵',
      title: '大耳朵图图',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181108%2Fbcd6e4a085e44384afc0eaa2c5c63ea3.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849385&t=ae743e3227a304e051f77e10e910e2b5',
      subTitle: '我是快乐的图图爸爸',
      title: '图图爸爸',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fci.xiaohongshu.com%2F92e573fa-e3e0-5929-49cf-aa202901e586%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fci.xiaohongshu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849422&t=9fc6256aa35aa8d4717ace63e35b6f56',
      subTitle: '我是快乐的大耳朵图图妈妈',
      title: '图图妈妈',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201907%2F18%2F20190718182706_wyhhd.thumb.400_0.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668844151&t=632e65f1c6ca66f8aeb00f3c8c55844f',
      subTitle: '我是快乐的大耳朵我是快乐的大耳朵我是快乐的大耳朵',
      title: '大耳朵图图',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181108%2Fbcd6e4a085e44384afc0eaa2c5c63ea3.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849385&t=ae743e3227a304e051f77e10e910e2b5',
      subTitle: '我是快乐的图图爸爸',
      title: '图图爸爸',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fci.xiaohongshu.com%2F92e573fa-e3e0-5929-49cf-aa202901e586%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fci.xiaohongshu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849422&t=9fc6256aa35aa8d4717ace63e35b6f56',
      subTitle: '我是快乐的大耳朵图图妈妈',
      title: '图图妈妈',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201907%2F18%2F20190718182706_wyhhd.thumb.400_0.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668844151&t=632e65f1c6ca66f8aeb00f3c8c55844f',
      subTitle: '我是快乐的大耳朵我是快乐的大耳朵我是快乐的大耳朵',
      title: '大耳朵图图',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181108%2Fbcd6e4a085e44384afc0eaa2c5c63ea3.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849385&t=ae743e3227a304e051f77e10e910e2b5',
      subTitle: '我是快乐的图图爸爸',
      title: '图图爸爸',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fci.xiaohongshu.com%2F92e573fa-e3e0-5929-49cf-aa202901e586%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fci.xiaohongshu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849422&t=9fc6256aa35aa8d4717ace63e35b6f56',
      subTitle: '我是快乐的大耳朵图图妈妈',
      title: '图图妈妈',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201907%2F18%2F20190718182706_wyhhd.thumb.400_0.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668844151&t=632e65f1c6ca66f8aeb00f3c8c55844f',
      subTitle: '我是快乐的大耳朵我是快乐的大耳朵我是快乐的大耳朵',
      title: '大耳朵图图',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181108%2Fbcd6e4a085e44384afc0eaa2c5c63ea3.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849385&t=ae743e3227a304e051f77e10e910e2b5',
      subTitle: '我是快乐的图图爸爸',
      title: '图图爸爸',
      time: '17:11',
      type: MessageType.chat
  ),
  MessageDataInfo(
      avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fci.xiaohongshu.com%2F92e573fa-e3e0-5929-49cf-aa202901e586%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fci.xiaohongshu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668849422&t=9fc6256aa35aa8d4717ace63e35b6f56',
      subTitle: '我是快乐的大耳朵图图妈妈',
      title: '图图妈妈',
      time: '17:11',
      type: MessageType.chat
  )
];