
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  HomeWidgets._();
  static final instance = HomeWidgets._();
  factory HomeWidgets() => instance;

  List<String> listSlider = [
    'https://images.livemint.com/img/2022/08/01/1600x900/Cat-andriyko-podilnyk-RCfi7vgJjUY-unsplash_1659328989095_1659328998370_1659328998370.jpg',
    'https://nationaltoday.com/wp-content/uploads/2020/08/international-cat-day-640x514.jpg',
    'https://th-thumbnailer.cdn-si-edu.com/bZAar59Bdm95b057iESytYmmAjI=/1400x1050/filters:focal(594x274:595x275)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/95/db/95db799b-fddf-4fde-91f3-77024442b92d/egypt_kitty_social.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8IqeKtRQRYNslKdZ_S4vZj30nChI-iFpGqg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB2ysrPvhIBLoo22vh1IW1cPRT4YEaSA52Rg&usqp=CAU',
    'https://www.petfoodindustry.com/ext/resources/Images-by-month-year/21_07/Russian-blue-cat.jpg?t=1627569905&width=700',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg',
    'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__340.jpg',
    'https://cdn.vox-cdn.com/thumbor/pxSnpJCZtA3-2gzfVsPZTrZyr-I=/0x0:7808x5506/1200x800/filters:focal(3246x2374:4494x3622)/cdn.vox-cdn.com/uploads/chorus_image/image/68672382/shutterstock_149489132.0.0.jpg',
  ];

  List<Map<String, dynamic>> listIcon = [
    {
      'icons': const Icon(Icons.card_travel),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
    {
      'icons': const Icon(
        Icons.shop,
      ),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
    {
      'icons': const Icon(
        Icons.shopping_bag,
      ),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
    {
      'icons': const Icon(Icons.drive_eta),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
    {
      'icons': const Icon(Icons.home),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
    {
      'icons': const Icon(
        Icons.record_voice_over_outlined,
      ),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
    {
      'icons': const Icon(
        Icons.people,
      ),
      'label': 'ដឹកឥវ៉ាន់រហ័យ',
    },
  ];

  AppBar appBarWidgets(String str) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Image.asset(
        'assets/logo-nham24.png',
        height: 150,
      ),
      title: Text(
        str,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chat,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Row headWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeWidgets.instance
            .rowWidgets(icon: Icons.add, title: 'វិធីទូទាត់ប្រាក់'),
        HomeWidgets.instance
            .rowWidgets(icon: Icons.favorite_border, title: 'ចំនូលចិត្ត'),
        HomeWidgets.instance.rowWidgets(icon: Icons.wallet, title: 'កាបូបលុយ'),
      ],
    );
  }

  rowWidgets({
    IconData? icon,
    String? title,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon ?? Icons.add),
          Text(title ?? 'វិធីទូទាត់ប្រាក់'),
        ],
      ),
    );
  }

  Container sliderWidgets() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              listSlider[index].toString(),
              fit: BoxFit.fill,
            ),
          );
        },
        autoplay: true,
        duration: 1000,
        itemCount: listSlider.length,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }

  Padding wrapIcons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 25,
        runSpacing: 8,
        children: listIcon
            .asMap()
            .entries
            .map(
              (e) => Column(
                children: [
                  e.value['icons'] ?? const Icon(Icons.add),
                  Text(e.value['label'] ?? 'data'),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  giftWidgets() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          giftCMP(
            iconData: Icons.card_giftcard,
            text: 'Gift',
          ),
          giftCMP(
            iconData: Icons.share,
            text: 'INVITE',
          ),
        ],
      ),
    );
  }

  Container giftCMP({
    IconData? iconData,
    String? text,
  }) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData ?? Icons.card_giftcard),
          Text(
            text ?? 'Gift',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
