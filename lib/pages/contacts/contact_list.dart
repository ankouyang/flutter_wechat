import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/contacts/contact_vo.dart';
import 'package:flutter_wechat/pages/contacts/contact_item.dart';
import 'package:flutter_wechat/model/contact.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter_wechat/pages/contacts/contact_header.dart';

GlobalKey<_ContactListState>  childContactListKey = GlobalKey();
class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);
  @override
  State<ContactList> createState() => _ContactListState();
}
class _ContactListState extends State<ContactList> {

  List<ContactVo>  listContactVo = [
    ContactVo(
          listContactData: [
            ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '阿三'), isStaticImg: false),
            ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '阿四'), isStaticImg: false),
            ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F9%2F547d49cfac09f.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=c5ea93c94d34971ee4d0d18d5178f78c',name: '阿五'), isStaticImg: false),
            ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '阿六'), isStaticImg: false),
            ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '阿气'), isStaticImg: false),
          ],
          sessionKey: 'A'
      ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F041621122252%2F210416122252-1-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=26e2b1fcccd9ca0f546adedf9f440484',name: '毕福剑'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F121420113514%2F201214113514-6-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=36fad3eab5aa8d7c7c2ad870917294d2',name: '笔墨纸砚'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F4k%2Fs%2F02%2F2109242332225H9-0-lp.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=f3cfde7ccb0607406a7755c86f5be12d',name: '逼王'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F033021091503%2F210330091503-6-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=f3e52c92ec67d5b92ddbd0d29ec7b78e',name: '比比皆是'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F8%2F5453005f74be2.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=9d089374dad8eb8127c2c59fa5a116e9',name: '笔者'), isStaticImg: false),
        ],
        sessionKey: 'B'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.ivsky.com%2Fimg%2Ftupian%2Ft%2F202008%2F09%2Fxiangrikui-012.jpg&refer=http%3A%2F%2Fimg.ivsky.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=13c31c923223c8837b0e1248641c941d',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2Ftp09%2F210F2130512J47-0-lp.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=037169fba8f81b15c875341f3e27eeb4',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F010421143P0%2F210104143P0-13-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=ee494a6baed10c827fc58487fa2bfeb8',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2Fe%2F5577f8775b105.png&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=eb2779152ad9932d316b4543a6e6c1b9',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.qqtu8.com%2Ffiles%2F2122%2F22_13765.jpg&refer=http%3A%2F%2Fimage.qqtu8.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669018232&t=cea22ad6a11f3efd534273ef922a1697',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'C'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1415984692,3889465312&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=738441947,1208408731&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4080826490,615918710&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3988344443,4282949406&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=334080491,3307726294&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'D'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3713375227,571533122&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2235903830,1856743055&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3813927488,1739778909&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1635608122,693552335&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=774679999,2679830962&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'E'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1856946436,1599379154&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1010739515,2488150950&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=813347183,2158335217&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1819644070,1305753509&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=124476473,2583135375&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'F'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3694360626,2933607547&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=931123624,502354944&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3683704156,288749744&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2084624597,235761712&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=407688855,3169248799&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'G'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3337661019,3898256580&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1723458001,3671360301&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1577112734,4159784366&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1544254644,4214894236&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1527949733,2791156519&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'H'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3369781155,2244191219&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1972611367,1123866192&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3326728979,3352004316&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2734247514,822566911&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2063845375,2992423749&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'I'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2646899128,380997184&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2749898014,3398644511&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3813927488,1739778909&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'J'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'K'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'L'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'M'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'N'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '陈家乐'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '陈坤'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: '晨阳'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '陈富华'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '沉浮才'), isStaticImg: false),
        ],
        sessionKey: 'O'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: 'P1'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 'p2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 'p2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 'p2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 'p2'), isStaticImg: false),
        ],
        sessionKey: 'P'
    ),
    ContactVo(
        listContactData: [
            ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: 'Q1'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 'Q2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 'Q3'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 'Q4'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 'Q5'), isStaticImg: false),
        ],
        sessionKey: 'Q'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: 'R1'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 'R2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 'R3'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 'R4'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 'R5'), isStaticImg: false),
        ],
        sessionKey: 'R'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '三星'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 's3'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 's4'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 's5'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 's6'), isStaticImg: false),
        ],
        sessionKey: 'S'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: 't1'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 't2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 't3'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 't4'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 't5'), isStaticImg: false),
        ],
        sessionKey: 'T'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: 'U1'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 'U2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 'U3'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 'U4'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 'U5'), isStaticImg: false),
        ],
        sessionKey: 'U'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: 'VO'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: 'VI'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: 'V2'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: 'V3'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: 'V4'), isStaticImg: false),
        ],
        sessionKey: 'V'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',name: '王林'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',name: '万三'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',name: '王鹏'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',name: '汪丝'), isStaticImg: false),
          ContactItem(contact: ContactData(img: 'https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF',name: '旺旺'), isStaticImg: false),
        ],
        sessionKey: 'W'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp0.qhimg.com%2Ft0135aa52cd32614fb0.jpg%3Fsize%3D600x400&refer=http%3A%2F%2Fp0.qhimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669012391&t=12e31142c28abb75d945fef3bb71073e',name: '尚雯婕'), isStaticImg: false),
        ],
        sessionKey: 'S'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://img0.baidu.com/it/u=3639116731,44782392&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750',name: '洋洋'), isStaticImg: false),
        ],
        sessionKey: 'Y'
    ),
    ContactVo(
        listContactData: [
          ContactItem(contact: ContactData(img: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw1673h2075%2F20180301%2F6128-fwnpcns5936880.jpg&refer=http%3A%2F%2Fn.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1669012277&t=57645bcd3d1b47c785d7a6932f0d8575',name: '张继科'), isStaticImg: false),
        ],
        sessionKey: 'Z'
    ),
  ];
  ItemScrollController  itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return  ScrollablePositionedList.builder(
      physics: const BouncingScrollPhysics(),
      itemScrollController: itemScrollController,
      itemBuilder: (BuildContext context, int index) {
        if(index == 0){
          return const ContactHeader();
        }
        index -=1;//这里Image占了一个位置所以需要减1

        return  listContactVo[index];
      },
      itemCount: listContactVo.length+1,
    );
  }

  goToSessionKey(key){
   if(key =='↑'){
     itemScrollController.jumpTo(index: 0);
     return false;
   }
  for(var i =0;i<listContactVo.length;i++){
    if(key == listContactVo[i].sessionKey){
      itemScrollController.jumpTo(index: i+1); //由于这里有一个ContactHeader
      return false;
    }
   }
  }

}
