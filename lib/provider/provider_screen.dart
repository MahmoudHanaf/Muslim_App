import 'package:flutter/material.dart';
import 'package:moslim_app/views/screens/azkar_screen.dart';
import 'package:moslim_app/views/screens/sepha.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../views/screens/quran_surah_screen.dart';

class ProviderScreen extends ChangeNotifier {
  int index = 0;

  void changeIndex(currentIndex) {
    index = currentIndex;
    notifyListeners();
  }

  Future<int?> getIndex(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = await pref.getInt('currentIndex');
    changeIndex(data);
    notifyListeners();
    return data;
  }

  int sepha_num = 0;

  void change_sepha_num() {
    sepha_num += 1;
    notifyListeners();
  }

  void reset_sepha_num() {
    sepha_num = 0;
    notifyListeners();
  }

  List<dynamic> Sepha_Items = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا اله الا الله",
    "لا حول ولا قوة الا بالله",
  ];

  int ItemIndex = 0;

  change_index() {
    // printsepha_num - 33).abs();
    if ((sepha_num - 33 * (ItemIndex + 1)).abs() == 0) {
      //  int inde= ItemIndex +=1;
      print(ItemIndex);
      ChangeData(ItemIndex);
    }
    notifyListeners();
  }

  var ItemData = "سبحان الله";
  Future ChangeData(int inde) async {
    var newIndex = inde + 1;
    newIndex = newIndex % Sepha_Items.length;
    ItemIndex = newIndex % Sepha_Items.length;
    //  print(newIndex);
    ItemData = Sepha_Items[newIndex];
    //  print(ItemData);
    notifyListeners();
  }

//  List <Map> Data =[];
//  Future changeData() async
//  {
//    int inde =0;
//    int Item_index = Sepha_Items[inde];
//    int newIndex =Item_index+1 ;
//    newIndex = newIndex % 5 ;
//    print(newIndex);
//     Sepha_Items =await Sepha_Items[newIndex];
//   print(Sepha_Items);
//   notifyListeners();

//  }

  bool isDreawer = false;
  changeDrawer() {
    if (isDreawer == true) {
      isDreawer = false;
    } else {
      isDreawer = true;
    }
    notifyListeners();
  }

  List All_Data = [
    {
      'part_name': ' الاول',
      'image': 'assets/mmm0.jpg',
      'sura_name': 'الفاتحة',
      'sura_num': 0,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm1.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm2.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm3.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm4.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm5.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm6.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm7.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm8.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm9.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm10.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm11.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm12.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm13.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm14.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm15.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm16.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الاول',
      'image': 'assets/mmm17.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm18.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm19.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm20.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm21.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm22.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm23.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm24.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm25.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm26.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm27.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm28.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm29.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm30.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm31.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm32.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm33.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثانى',
      'image': 'assets/mmm34.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm35.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm36.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm37.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm38.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm39.jpg',
      'sura_name': 'البقرة',
      'sura_num': 1,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm40.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm41.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm42.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm43.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm44.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm45.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm46.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm47.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm48.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': ' الثالث',
      'image': 'assets/mmm49.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm50.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm51.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm52.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm53.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm54.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm55.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm56.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm57.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm58.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm59.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm60.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm61.jpg',
      'sura_name': 'ال عمران',
      'sura_num': 2,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm62.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm63.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm64.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الرابع',
      'image': 'assets/mmm65.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm66.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm67.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm68.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm69.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm70.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm71.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm72.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm73.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm74.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm75.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm76.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm77.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm78.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm79.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm80.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'الخامس',
      'image': 'assets/mmm81.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm82.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm83.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm84.jpg',
      'sura_name': 'النساء',
      'sura_num': 3,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm85.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm86.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm87.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm88.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm89.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm90.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm91.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm92.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm93.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm94.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm95.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm96.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السادس',
      'image': 'assets/mmm97.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm98.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm99.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm100.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm101.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm102.jpg',
      'sura_name': 'المائدة',
      'sura_num': 4,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm103.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm104.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm105.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm106.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm107.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm108.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm109.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm110.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm111.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm112.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm113.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'السابع',
      'image': 'assets/mmm114.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm115.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm116.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm117.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm118.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm119.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm120.jpg',
      'sura_name': 'الانعام',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm121.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 5,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm122.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm123.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm124.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm125.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm126.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm127.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm128.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'الثامن',
      'image': 'assets/mmm129.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm130.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm131.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm132.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm133.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm134.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm135.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm136.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm137.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm138.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm139.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm140.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm141.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm142.jpg',
      'sura_name': 'الاعراف',
      'sura_num': 6,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm143.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm144.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'التاسع',
      'image': 'assets/mmm145.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm146.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm147.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm148.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm149.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm150.jpg',
      'sura_name': 'الانفال',
      'sura_num': 7,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm151.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm152.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm153.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm154.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm155.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm156.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm157.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm158.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm159.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm160.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm161.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'العاشر',
      'image': 'assets/mmm162.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm163.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm164.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm165.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm166.jpg',
      'sura_name': 'التوبة',
      'sura_num': 8,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm167.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm168.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm169.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm170.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm171.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm172.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm173.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm174.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm175.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm176.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm177.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': 'الحادى عشر',
      'image': 'assets/mmm178.jpg',
      'sura_name': 'يونس',
      'sura_num': 9,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm179.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm180.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm181.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm182.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm183.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm184.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm185.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm186.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm187.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm188.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm189.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm190.jpg',
      'sura_name': 'هود',
      'sura_num': 10,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm191.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm192.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm193.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm194.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm195.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثانى عشر',
      'image': 'assets/mmm196.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm197.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm198.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm199.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm200.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm201.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm202.jpg',
      'sura_name': 'يوسف',
      'sura_num': 11,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm203.jpg',
      'sura_name': 'الرعد',
      'sura_num': 12,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm204.jpg',
      'sura_name': 'الرعد',
      'sura_num': 12,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm205.jpg',
      'sura_name': 'الرعد',
      'sura_num': 12,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm206.jpg',
      'sura_name': 'الرعد',
      'sura_num': 12,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm207.jpg',
      'sura_name': 'الرعد',
      'sura_num': 12,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm208.jpg',
      'sura_name': 'ابراهيم',
      'sura_num': 13,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm209.jpg',
      'sura_name': 'ابراهيم',
      'sura_num': 13,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm210.jpg',
      'sura_name': 'ابراهيم',
      'sura_num': 13,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm211.jpg',
      'sura_name': 'ابراهيم',
      'sura_num': 13,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm212.jpg',
      'sura_name': 'ابراهيم',
      'sura_num': 13,
    },
    {
      'part_name': ' الثالث عشر',
      'image': 'assets/mmm213.jpg',
      'sura_name': 'ابراهيم',
      'sura_num': 13,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm214.jpg',
      'sura_name': 'الحجر',
      'sura_num': 14,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm215.jpg',
      'sura_name': 'الحجر',
      'sura_num': 14,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm216.jpg',
      'sura_name': 'الحجر',
      'sura_num': 14,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm217.jpg',
      'sura_name': 'الحجر',
      'sura_num': 14,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm218.jpg',
      'sura_name': 'الحجر',
      'sura_num': 14,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm219.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm220.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm221.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm222.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm223.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm224.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm225.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm226.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm227.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm228.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm229.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الرابع عشر',
      'image': 'assets/mmm230.jpg',
      'sura_name': 'النحل',
      'sura_num': 15,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm231.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm232.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm233.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm234.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm235.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm236.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm237.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm238.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm239.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm240.jpg',
      'sura_name': 'الاسراء',
      'sura_num': 16,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm241.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm242.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm243.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm244.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm245.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm246.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' الخامس عشر',
      'image': 'assets/mmm247.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm248.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm249.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm250.jpg',
      'sura_name': 'الكهف',
      'sura_num': 17,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm251.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm252.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm253.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm254.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm255.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm256.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm257.jpg',
      'sura_name': 'مريم',
      'sura_num': 18,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm258.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm259.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm260.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm261.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm262.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm263.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm264.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السادس عشر',
      'image': 'assets/mmm265.jpg',
      'sura_name': 'طه',
      'sura_num': 19,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm266.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm267.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm268.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm269.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm270.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm271.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm272.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm273.jpg',
      'sura_name': 'الانبياء',
      'sura_num': 20,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm274.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm275.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm276.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm277.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm278.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm279.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm280.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' السابع عشر',
      'image': 'assets/mmm281.jpg',
      'sura_name': 'الحج',
      'sura_num': 21,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm282.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm283.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm284.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm285.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm286.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm287.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm288.jpg',
      'sura_name': 'المؤمنون',
      'sura_num': 22,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm289.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm290.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm291.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm292.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm293.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm294.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm295.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm296.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm297.jpg',
      'sura_name': 'النور',
      'sura_num': 23,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm298.jpg',
      'sura_name': 'الفرقان',
      'sura_num': 24,
    },
    {
      'part_name': ' الثامن عشر',
      'image': 'assets/mmm299.jpg',
      'sura_name': 'الفرقان',
      'sura_num': 24,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm300.jpg',
      'sura_name': 'الفرقان',
      'sura_num': 24,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm301.jpg',
      'sura_name': 'الفرقان',
      'sura_num': 24,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm302.jpg',
      'sura_name': 'الفرقان',
      'sura_num': 24,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm303.jpg',
      'sura_name': 'الفرقان',
      'sura_num': 24,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm304.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm305.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm306.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm307.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm308.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm309.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm310.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm311.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm312.jpg',
      'sura_name': 'الشعراء',
      'sura_num': 25,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm313.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm314.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm315.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm316.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': ' التاسع عشر',
      'image': 'assets/mmm317.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm318.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm319.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm320.jpg',
      'sura_name': 'النمل',
      'sura_num': 26,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm321.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm322.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm323.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm324.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm325.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm326.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm327.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm328.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm329.jpg',
      'sura_name': 'القصص',
      'sura_num': 27,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm330.jpg',
      'sura_name': 'العنكبوت',
      'sura_num': 28,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm331.jpg',
      'sura_name': 'العنكبوت',
      'sura_num': 28,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm332.jpg',
      'sura_name': 'العنكبوت',
      'sura_num': 28,
    },
    {
      'part_name': 'العشرون',
      'image': 'assets/mmm333.jpg',
      'sura_name': 'العنكبوت',
      'sura_num': 28,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm334.jpg',
      'sura_name': 'العنكبوت',
      'sura_num': 28,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm335.jpg',
      'sura_name': 'العنكبوت',
      'sura_num': 28,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm336.jpg',
      'sura_name': 'الروم',
      'sura_num': 29,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm337.jpg',
      'sura_name': 'الروم',
      'sura_num': 29,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm338.jpg',
      'sura_name': 'الروم',
      'sura_num': 29,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm339.jpg',
      'sura_name': 'الروم',
      'sura_num': 29,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm340.jpg',
      'sura_name': 'الروم',
      'sura_num': 29,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm341.jpg',
      'sura_name': 'الروم',
      'sura_num': 29,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm342.jpg',
      'sura_name': 'لقمان',
      'sura_num': 30,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm343.jpg',
      'sura_name': 'لقمان',
      'sura_num': 30,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm344.jpg',
      'sura_name': 'لقمان',
      'sura_num': 30,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm345.jpg',
      'sura_name': 'السجدة',
      'sura_num': 31,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm346.jpg',
      'sura_name': 'السجدة',
      'sura_num': 31,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm347.jpg',
      'sura_name': 'السجدة',
      'sura_num': 31,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm348.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm349.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الحادى والعشرون',
      'image': 'assets/mmm350.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm351.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm352.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm353.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm354.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm355.jpg',
      'sura_name': 'الاحزاب',
      'sura_num': 32,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm356.jpg',
      'sura_name': 'سبأ',
      'sura_num': 33,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm357.jpg',
      'sura_name': 'سبأ',
      'sura_num': 33,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm358.jpg',
      'sura_name': 'سبأ',
      'sura_num': 33,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm359.jpg',
      'sura_name': 'سبأ',
      'sura_num': 33,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm360.jpg',
      'sura_name': 'سبأ',
      'sura_num': 33,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm361.jpg',
      'sura_name': 'سبأ',
      'sura_num': 33,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm362.jpg',
      'sura_name': 'فاطر',
      'sura_num': 34,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm363.jpg',
      'sura_name': 'فاطر',
      'sura_num': 34,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm364.jpg',
      'sura_name': 'فاطر',
      'sura_num': 34,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm365.jpg',
      'sura_name': 'فاطر',
      'sura_num': 34,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm366.jpg',
      'sura_name': 'فاطر',
      'sura_num': 34,
    },
    {
      'part_name': 'الثانى والعشرون',
      'image': 'assets/mmm367.jpg',
      'sura_name': 'يس',
      'sura_num': 35,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm368.jpg',
      'sura_name': 'يس',
      'sura_num': 35,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm369.jpg',
      'sura_name': 'يس',
      'sura_num': 35,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm370.jpg',
      'sura_name': 'يس',
      'sura_num': 35,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm371.jpg',
      'sura_name': 'يس',
      'sura_num': 35,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm372.jpg',
      'sura_name': 'الصافات',
      'sura_num': 36,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm373.jpg',
      'sura_name': 'الصافات',
      'sura_num': 36,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm374.jpg',
      'sura_name': 'الصافات',
      'sura_num': 36,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm375.jpg',
      'sura_name': 'الصافات',
      'sura_num': 36,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm376.jpg',
      'sura_name': 'الصافات',
      'sura_num': 36,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm377.jpg',
      'sura_name': 'الصافات',
      'sura_num': 36,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm378.jpg',
      'sura_name': 'ص',
      'sura_num': 37,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm379.jpg',
      'sura_name': 'ص',
      'sura_num': 37,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm380.jpg',
      'sura_name': 'ص',
      'sura_num': 37,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm381.jpg',
      'sura_name': 'ص',
      'sura_num': 37,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm382.jpg',
      'sura_name': 'ص',
      'sura_num': 37,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm383.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm384.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الثالث والعشرون',
      'image': 'assets/mmm385.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm386.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm387.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm388.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm389.jpg',
      'sura_name': 'الزمر',
      'sura_num': 38,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm390.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm391.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm392.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm393.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm394.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm395.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm396.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm397.jpg',
      'sura_name': 'غافر',
      'sura_num': 39,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm398.jpg',
      'sura_name': 'فصلت',
      'sura_num': 40,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm399.jpg',
      'sura_name': 'فصلت',
      'sura_num': 40,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm400.jpg',
      'sura_name': 'فصلت',
      'sura_num': 40,
    },
    {
      'part_name': 'الرابع والعشرون',
      'image': 'assets/mmm401.jpg',
      'sura_name': 'فصلت',
      'sura_num': 40,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm402.jpg',
      'sura_name': 'فصلت',
      'sura_num': 40,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm403.jpg',
      'sura_name': 'الشورى',
      'sura_num': 41,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm404.jpg',
      'sura_name': 'الشورى',
      'sura_num': 41,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm405.jpg',
      'sura_name': 'الشورى',
      'sura_num': 41,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm406.jpg',
      'sura_name': 'الشورى',
      'sura_num': 41,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm407.jpg',
      'sura_name': 'الشورى',
      'sura_num': 41,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm408.jpg',
      'sura_name': 'الشورى',
      'sura_num': 41,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm409.jpg',
      'sura_name': 'الزخرف',
      'sura_num': 42,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm410.jpg',
      'sura_name': 'الزخرف',
      'sura_num': 42,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm411.jpg',
      'sura_name': 'الزخرف',
      'sura_num': 42,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm412.jpg',
      'sura_name': 'الزخرف',
      'sura_num': 42,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm413.jpg',
      'sura_name': 'الزخرف',
      'sura_num': 42,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm414.jpg',
      'sura_name': 'الزخرف',
      'sura_num': 42,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm415.jpg',
      'sura_name': 'الدخان',
      'sura_num': 43,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm416.jpg',
      'sura_name': 'الدخان',
      'sura_num': 43,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm417.jpg',
      'sura_name': 'الجاثية',
      'sura_num': 44,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm418.jpg',
      'sura_name': 'الجاثية',
      'sura_num': 44,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm419.jpg',
      'sura_name': 'الجاثية',
      'sura_num': 44,
    },
    {
      'part_name': 'الخامس والعشرون',
      'image': 'assets/mmm420.jpg',
      'sura_name': 'الجاثية',
      'sura_num': 44,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm421.jpg',
      'sura_name': 'الاحقاف',
      'sura_num': 45,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm422.jpg',
      'sura_name': 'الاحقاف',
      'sura_num': 45,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm423.jpg',
      'sura_name': 'الاحقاف',
      'sura_num': 45,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm424.jpg',
      'sura_name': 'الاحقاف',
      'sura_num': 45,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm425.jpg',
      'sura_name': 'محمد',
      'sura_num': 46,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm426.jpg',
      'sura_name': 'محمد',
      'sura_num': 46,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm427.jpg',
      'sura_name': 'محمد',
      'sura_num': 46,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm428.jpg',
      'sura_name': 'الفتح',
      'sura_num': 47,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm429.jpg',
      'sura_name': 'الفتح',
      'sura_num': 47,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm430.jpg',
      'sura_name': 'الفتح',
      'sura_num': 47,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm431.jpg',
      'sura_name': 'الفتح',
      'sura_num': 47,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm432.jpg',
      'sura_name': 'الحجرات',
      'sura_num': 48,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm433.jpg',
      'sura_name': 'الحجرات',
      'sura_num': 48,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm434.jpg',
      'sura_name': 'الحجرات',
      'sura_num': 48,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm435.jpg',
      'sura_name': 'ق',
      'sura_num': 49,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm436.jpg',
      'sura_name': 'ق',
      'sura_num': 49,
    },
    {
      'part_name': 'السادس والعشرون',
      'image': 'assets/mmm437.jpg',
      'sura_name': 'الذاريات',
      'sura_num': 50,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm438.jpg',
      'sura_name': 'الذاريات',
      'sura_num': 50,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm439.jpg',
      'sura_name': 'الذاريات',
      'sura_num': 50,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm440.jpg',
      'sura_name': 'الطور',
      'sura_num': 51,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm441.jpg',
      'sura_name': 'الطور',
      'sura_num': 51,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm442.jpg',
      'sura_name': 'النجم',
      'sura_num': 52,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm443.jpg',
      'sura_name': 'النجم',
      'sura_num': 52,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm444.jpg',
      'sura_name': 'النجم',
      'sura_num': 52,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm445.jpg',
      'sura_name': 'القمر',
      'sura_num': 53,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm446.jpg',
      'sura_name': 'القمر',
      'sura_num': 53,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm447.jpg',
      'sura_name': 'الرحمن',
      'sura_num': 54,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm448.jpg',
      'sura_name': 'الرحمن',
      'sura_num': 54,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm449.jpg',
      'sura_name': 'الرحمن',
      'sura_num': 54,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm450.jpg',
      'sura_name': 'الواقعة',
      'sura_num': 55,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm451.jpg',
      'sura_name': 'الواقعة',
      'sura_num': 55,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm452.jpg',
      'sura_name': 'الواقعة',
      'sura_num': 55,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm453.jpg',
      'sura_name': 'الحديد',
      'sura_num': 56,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm454.jpg',
      'sura_name': 'الحديد',
      'sura_num': 56,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm455.jpg',
      'sura_name': 'الحديد',
      'sura_num': 56,
    },
    {
      'part_name': 'السابع والعشرون',
      'image': 'assets/mmm456.jpg',
      'sura_name': 'الحديد',
      'sura_num': 56,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm457.jpg',
      'sura_name': 'المجادلة',
      'sura_num': 57,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm458.jpg',
      'sura_name': 'المجادلة',
      'sura_num': 57,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm459.jpg',
      'sura_name': 'المجادلة',
      'sura_num': 57,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm460.jpg',
      'sura_name': 'الحشر',
      'sura_num': 58,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm461.jpg',
      'sura_name': 'الحشر',
      'sura_num': 58,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm462.jpg',
      'sura_name': 'الحشر',
      'sura_num': 58,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm463.jpg',
      'sura_name': 'الممتحنة',
      'sura_num': 59,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm464.jpg',
      'sura_name': 'الممتحنة',
      'sura_num': 59,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm465.jpg',
      'sura_name': 'الممتحنة',
      'sura_num': 59,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm466.jpg',
      'sura_name': 'الصف',
      'sura_num': 60,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm467.jpg',
      'sura_name': 'الجمعة',
      'sura_num': 61,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm468.jpg',
      'sura_name': 'الجمعة',
      'sura_num': 61,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm469.jpg',
      'sura_name': 'المنافقون',
      'sura_num': 62,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm470.jpg',
      'sura_name': 'التغابن',
      'sura_num': 63,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm471.jpg',
      'sura_name': 'التغابن',
      'sura_num': 63,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm472.jpg',
      'sura_name': 'الطلاق',
      'sura_num': 64,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm473.jpg',
      'sura_name': 'الطلاق',
      'sura_num': 64,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm474.jpg',
      'sura_name': 'التحريم',
      'sura_num': 65,
    },
    {
      'part_name': 'الثامن والعشرون',
      'image': 'assets/mmm475.jpg',
      'sura_name': 'التحريم',
      'sura_num': 65,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm476.jpg',
      'sura_name': 'الملك',
      'sura_num': 66,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm477.jpg',
      'sura_name': 'الملك',
      'sura_num': 66,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm478.jpg',
      'sura_name': 'القلم',
      'sura_num': 67,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm479.jpg',
      'sura_name': 'القلم',
      'sura_num': 67,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm480.jpg',
      'sura_name': 'الحاقة',
      'sura_num': 68,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm481.jpg',
      'sura_name': 'الحاقة',
      'sura_num': 68,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm482.jpg',
      'sura_name': 'المعارج',
      'sura_num': 69,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm483.jpg',
      'sura_name': 'المعارج',
      'sura_num': 69,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm484.jpg',
      'sura_name': 'نوح',
      'sura_num': 70,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm485.jpg',
      'sura_name': 'نوح',
      'sura_num': 70,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm486.jpg',
      'sura_name': 'الجن',
      'sura_num': 71,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm487.jpg',
      'sura_name': 'الجن',
      'sura_num': 71,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm488.jpg',
      'sura_name': 'المزمل',
      'sura_num': 72,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm489.jpg',
      'sura_name': 'المدثر',
      'sura_num': 73,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm490.jpg',
      'sura_name': 'المدثر',
      'sura_num': 73,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm491.jpg',
      'sura_name': 'القيامة',
      'sura_num': 74,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm492.jpg',
      'sura_name': 'القيامة',
      'sura_num': 74,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm493.jpg',
      'sura_name': 'الانسان',
      'sura_num': 75,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm494.jpg',
      'sura_name': 'الانسان',
      'sura_num': 75,
    },
    {
      'part_name': 'التاسع والعشرون',
      'image': 'assets/mmm495.jpg',
      'sura_name': 'المرسلات',
      'sura_num': 76,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm496.jpg',
      'sura_name': 'النيأ',
      'sura_num': 77,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm497.jpg',
      'sura_name': 'النيأ',
      'sura_num': 77,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm498.jpg',
      'sura_name': 'النازعات',
      'sura_num': 78,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm499.jpg',
      'sura_name': 'عبسى',
      'sura_num': 79,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm500.jpg',
      'sura_name': 'التكوير',
      'sura_num': 80,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm501.jpg',
      'sura_name': 'الانفطار',
      'sura_num': 81,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm502.jpg',
      'sura_name': 'المطففين',
      'sura_num': 82,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm503.jpg',
      'sura_name': 'الانشقاق',
      'sura_num': 83,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm504.jpg',
      'sura_name': 'البروج',
      'sura_num': 84,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm505.jpg',
      'sura_name': 'الطارق',
      'sura_num': 85,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm506.jpg',
      'sura_name': 'الاعلى',
      'sura_num': 86,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm507.jpg',
      'sura_name': 'الغاشية',
      'sura_num': 87,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm508.jpg',
      'sura_name': 'الفجر',
      'sura_num': 88,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm509.jpg',
      'sura_name': 'البلد',
      'sura_num': 89,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm510.jpg',
      'sura_name': 'الشمس',
      'sura_num': 90,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm511.jpg',
      'sura_name': 'الضحى',
      'sura_num': 91,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm512.jpg',
      'sura_name': 'الشرح',
      'sura_num': 92,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm513.jpg',
      'sura_name': 'القدر',
      'sura_num': 93,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm514.jpg',
      'sura_name': 'البينة',
      'sura_num': 94,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm515.jpg',
      'sura_name': 'العاديات',
      'sura_num': 95,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm516.jpg',
      'sura_name': 'التكاثر',
      'sura_num': 96,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm517.jpg',
      'sura_name': 'الهمزة',
      'sura_num': 97,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm518.jpg',
      'sura_name': 'قريش',
      'sura_num': 98,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm519.jpg',
      'sura_name': 'الكافرون',
      'sura_num': 99,
    },
    {
      'part_name': 'الثلاثون',
      'image': 'assets/mmm520.jpg',
      'sura_name': 'الاخلاص',
      'sura_num': 100,
    },
  ];

  List Category_surah = [
    {
      'surah_name': 'الفاتحة',
      'start_index': 0,
    },
    {
      'surah_name': 'البقرة',
      'start_index': 1,
    },
    {
      'surah_name': 'ال عمران',
      'start_index': 40,
    },
    {
      'surah_name': 'النساء',
      'start_index': 62,
    },
    {
      'surah_name': 'المائدة',
      'start_index': 85,
    },
    {
      'surah_name': 'الانعام',
      'start_index': 103,
    },
    {
      'surah_name': 'الاعراف',
      'start_index': 121,
    },
    {
      'surah_name': 'الانفال',
      'start_index': 143,
    },
    {
      'surah_name': 'التوبة',
      'start_index': 151,
    },
    {
      'surah_name': 'يونس',
      'start_index': 167,
    },
    {
      'surah_name': 'هود',
      'start_index': 179,
    },
    {
      'surah_name': 'يوسف',
      'start_index': 191,
    },
    {
      'surah_name': 'الرعد',
      'start_index': 203,
    },
    {
      'surah_name': 'ابراهيم',
      'start_index': 208,
    },
    {
      'surah_name': 'الحجر',
      'start_index': 214,
    },
    {
      'surah_name': 'النحل',
      'start_index': 219,
    },
    {
      'surah_name': 'الاسراء',
      'start_index': 231,
    },
    {
      'surah_name': 'الكهف',
      'start_index': 241,
    },
    {
      'surah_name': 'مريم',
      'start_index': 251,
    },
    {
      'surah_name': 'طه',
      'start_index': 258,
    },
    {
      'surah_name': 'الانبياء',
      'start_index': 266,
    },
    {
      'surah_name': 'الحج',
      'start_index': 274,
    },
    {
      'surah_name': 'المؤمنون',
      'start_index': 282,
    },
    {
      'surah_name': 'النور',
      'start_index': 289,
    },
    {
      'surah_name': 'الفرقان',
      'start_index': 298,
    },
    {
      'surah_name': 'الشعراء',
      'start_index': 304,
    },
    {
      'surah_name': 'النمل',
      'start_index': 313,
    },
    {
      'surah_name': 'القصص',
      'start_index': 321,
    },
    {
      'surah_name': 'العنكبوت',
      'start_index': 330,
    },
    {
      'surah_name': 'الروم',
      'start_index': 336,
    },
    {
      'surah_name': 'لقمان',
      'start_index': 342,
    },
    {
      'surah_name': 'السجدة',
      'start_index': 345,
    },
    {
      'surah_name': 'الاحزاب',
      'start_index': 348,
    },
    {
      'surah_name': 'سبأ',
      'start_index': 356,
    },
    {
      'surah_name': 'فاطر',
      'start_index': 362,
    },
    {
      'surah_name': 'يس',
      'start_index': 367,
    },
    {
      'surah_name': 'الصافات',
      'start_index': 372,
    },
    {
      'surah_name': 'ص',
      'start_index': 378,
    },
    {
      'surah_name': 'الزمر',
      'start_index': 383,
    },
    {
      'surah_name': 'غافر',
      'start_index': 390,
    },
    {
      'surah_name': 'فصلت',
      'start_index': 398,
    },
    {
      'surah_name': 'الشورى',
      'start_index': 403,
    },
    {
      'surah_name': 'الزخرف',
      'start_index': 409,
    },
    {
      'surah_name': 'الدخان',
      'start_index': 415,
    },
    {
      'surah_name': 'الجاثية',
      'start_index': 417,
    },
    {
      'surah_name': 'الاحقاف',
      'start_index': 421,
    },
    {
      'surah_name': 'محمد',
      'start_index': 425,
    },
    {
      'surah_name': 'الفتح',
      'start_index': 428,
    },
    {
      'surah_name': 'الحجرات',
      'start_index': 432,
    },
    {
      'surah_name': 'ق',
      'start_index': 435,
    },
    {
      'surah_name': 'الذاريات',
      'start_index': 437,
    },
    {
      'surah_name': 'الطور',
      'start_index': 440,
    },
    {
      'surah_name': 'النجم',
      'start_index': 442,
    },
    {
      'surah_name': 'القمر',
      'start_index': 445,
    },
    {
      'surah_name': 'الرحمن',
      'start_index': 447,
    },
    {
      'surah_name': 'الواقعة',
      'start_index': 450,
    },
    {
      'surah_name': 'الحديد',
      'start_index': 453,
    },
    {
      'surah_name': 'المجادلة',
      'start_index': 457,
    },
    {
      'surah_name': 'الحشر',
      'start_index': 460,
    },
    {
      'surah_name': 'الممتحنة',
      'start_index': 463,
    },
    {
      'surah_name': 'الصف',
      'start_index': 466,
    },
    {
      'surah_name': 'الجمعة',
      'start_index': 467,
    },
    {
      'surah_name': 'المنافقون',
      'start_index': 469,
    },
    {
      'surah_name': 'التغابن',
      'start_index': 470,
    },
    {
      'surah_name': 'الطلاق',
      'start_index': 472,
    },
    {
      'surah_name': 'التحريم',
      'start_index': 474,
    },
    {
      'surah_name': 'الملك',
      'start_index': 476,
    },
    {
      'surah_name': 'القلم',
      'start_index': 478,
    },
    {
      'surah_name': 'الحاقة',
      'start_index': 480,
    },
    {
      'surah_name': 'المعارج',
      'start_index': 482,
    },
    {
      'surah_name': 'نوح',
      'start_index': 484,
    },
    {
      'surah_name': 'الجن',
      'start_index': 486,
    },
    {
      'surah_name': 'المزمل',
      'start_index': 488,
    },
    {
      'surah_name': 'المدثر',
      'start_index': 489,
    },
    {
      'surah_name': 'القيامة',
      'start_index': 491,
    },
    {
      'surah_name': 'الانسان',
      'start_index': 493,
    },
    {
      'surah_name': 'المرسلات',
      'start_index': 495,
    },
    {
      'surah_name': 'النبأ',
      'start_index': 496,
    },
    {
      'surah_name': 'النازعات',
      'start_index': 498,
    },
    {
      'surah_name': 'عبسى',
      'start_index': 499,
    },
    {
      'surah_name': 'التكوير',
      'start_index': 500,
    },
    {
      'surah_name': 'الانفطار',
      'start_index': 501,
    },
    {
      'surah_name': 'المطففين',
      'start_index': 502,
    },
    {
      'surah_name': 'الانشقاق',
      'start_index': 503,
    },
    {
      'surah_name': 'البروج',
      'start_index': 504,
    },
    {
      'surah_name': 'الطارق',
      'start_index': 505,
    },
    {
      'surah_name': 'الاعلى',
      'start_index': 506,
    },
    {
      'surah_name': 'الغاشية',
      'start_index': 507,
    },
    {
      'surah_name': 'الفجر',
      'start_index': 508,
    },
    {
      'surah_name': 'البلد',
      'start_index': 509,
    },
    {
      'surah_name': 'الشمس',
      'start_index': 510,
    },
    {
      'surah_name': 'الليل',
      'start_index': 510,
    },
    {
      'surah_name': 'الضحى',
      'start_index': 511,
    },
    {
      'surah_name': 'الشرح',
      'start_index': 512,
    },
    {
      'surah_name': 'التين',
      'start_index': 512,
    },
    {
      'surah_name': 'العلق',
      'start_index': 512,
    },
    {
      'surah_name': 'القدر',
      'start_index': 513,
    },
    {
      'surah_name': 'البينة',
      'start_index': 514,
    },
    {
      'surah_name': 'الزلزلة',
      'start_index': 514,
    },
    {
      'surah_name': 'العاديات',
      'start_index': 515,
    },
    {
      'surah_name': 'القارعة',
      'start_index': 515,
    },
    {
      'surah_name': 'التكاثر',
      'start_index': 516,
    },
    {
      'surah_name': 'العصر',
      'start_index': 516,
    },
    {
      'surah_name': 'الهمزة',
      'start_index': 517,
    },
    {
      'surah_name': 'الفيل',
      'start_index': 517,
    },
    {
      'surah_name': 'قريش',
      'start_index': 518,
    },
    {
      'surah_name': 'الماعون',
      'start_index': 518,
    },
    {
      'surah_name': 'الكوثر',
      'start_index': 518,
    },
    {
      'surah_name': 'الكافرون',
      'start_index': 519,
    },
    {
      'surah_name': 'النصر',
      'start_index': 519,
    },
    {
      'surah_name': 'المسد',
      'start_index': 519,
    },
    {
      'surah_name': 'الاخلاص',
      'start_index': 520,
    },
    {
      'surah_name': 'الفلق',
      'start_index': 520,
    },
    {
      'surah_name': 'الناس',
      'start_index': 520,
    },
  ];

  List Category_parts = [
    {
      'part_name': 'الاول',
      'start_index': 0,
    },
    {
      'part_name': 'الثانى',
      'start_index': 18,
    },
    {
      'part_name': 'الثالث',
      'start_index': 34,
    },
    {
      'part_name': 'الرابع',
      'start_index': 50,
    },
    {
      'part_name': 'الخامس',
      'start_index': 66,
    },
    {
      'part_name': 'السادس',
      'start_index': 82,
    },
    {
      'part_name': 'السابع',
      'start_index': 97,
    },
    {
      'part_name': 'الثامن',
      'start_index': 114,
    },
    {
      'part_name': 'التاسع',
      'start_index': 130,
    },
    {
      'part_name': 'العاشر',
      'start_index': 146,
    },
    {
      'part_name': 'الحادى عشر',
      'start_index': 162,
    },
    {
      'part_name': 'الثانى عشر',
      'start_index': 179,
    },
    {
      'part_name': 'الثالث عشر',
      'start_index': 197,
    },
    {
      'part_name': 'الرابع عشر',
      'start_index': 214,
    },
    {
      'part_name': 'الخامس عشر',
      'start_index': 231,
    },
    {
      'part_name': 'السادس عشر',
      'start_index': 248,
    },
    {
      'part_name': 'السابع عشر',
      'start_index': 266,
    },
    {
      'part_name': 'الثامن عشر',
      'start_index': 282,
    },
    {
      'part_name': 'التاسع عشر',
      'start_index': 300,
    },
    {
      'part_name': 'العشرون',
      'start_index': 318,
    },
    {
      'part_name': 'الحادى والعشرون',
      'start_index': 334,
    },
    {
      'part_name': 'الثانى والعشرون',
      'start_index': 351,
    },
    {
      'part_name': 'الثالث والعشرون',
      'start_index': 368,
    },
    {
      'part_name': 'الرابع والعشرون',
      'start_index': 386,
    },
    {
      'part_name': 'الخامس والعشرون',
      'start_index': 402,
    },
    {
      'part_name': 'السادس والعشرون',
      'start_index': 421,
    },
    {
      'part_name': 'السابع والعشرون',
      'start_index': 438,
    },
    {
      'part_name': 'الثامن والعشرون',
      'start_index': 457,
    },
    {
      'part_name': 'التاسع والعشرون',
      'start_index': 476,
    },
    {
      'part_name': 'الثلاثون',
      'start_index': 496,
    },
  ];

  int? currentIndex;

  void change_content_items(index) {
    currentIndex = index;
    notifyListeners();
  }

  List Azquar_Category = [
    {
      'name': 'اذكار الصباح',
      'image': 'assets/ma1.jpg',
      'Items': [
        {
          "zekr":
              "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ\nاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.\n[آية الكرسى - البقرة 255].",
          'description':
              "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح.",
          'count': 1,
        },
        {
          "zekr":
              "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.",
          'description':
              "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).",
          'count': 3,
        },
        {
          "count": 3,
          "description":
              "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).",
          "zekr":
              "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر."
        },
        {
          "count": 1,
          "description":
              "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح.",
          "zekr":
              "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ ."
        },
        {
          "count": 3,
          "description":
              "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة.",
          "zekr":
              "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً."
        },
        {
          "count": 4,
          "description": "من قالها أعتقه الله من النار.",
          "zekr":
              "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك."
        },
        {
          "count": 1,
          "description": "من قالها حين يصبح أدى شكر يومه.",
          "zekr":
              "اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر."
        },
        {
          "count": 7,
          "description": "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة.",
          "zekr":
              "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم."
        },
        {
          "count": 3,
          "description": "لم يضره من الله شيء.",
          "zekr":
              "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ ، وَنَصْـرَهُ ، وَنـورَهُ وَبَـرَكَتَـهُ ، وَهُـداهُ ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق."
        },
        {
          "count": 10,
          "description":
              "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.",
          "zekr": "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا."
        },
        {
          "count": 1,
          "description": "ذكر طيب.",
          "zekr":
              "اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ."
        },
        {
          "count": 100,
          "description":
              "من قالها 100 مرة في يوم كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان في يومه ذلك حتى يمسي ولم يأتي أحد بأفضل مما جاء به إلا احد عمل أكثر من ذلك",
          "zekr":
              "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ."
        },
        {
          "count": 100,
          "description":
              "حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.",
          "zekr": "سُبْحـانَ اللهِ وَبِحَمْـدِهِ."
        },
        {
          "count": 100,
          "description":
              "مائة حسنة، ومُحيت عنه مائة سيئة، وكانت له حرزاً من الشيطان حتى يمسى.",
          "zekr": "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ"
        },
      ],
    },
    {
      'name': 'اذكار المساء',
      'image': 'assets/m4.png',
      'Items': [
        {
          "count": 1,
          "description":
              "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح.",
          "zekr":
              "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ\nاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.\n[آية الكرسى - البقرة 255]."
        },
        {
          "count": 1,
          "description": "من قرأ آيتين من آخر سورة البقرة في ليلة كفتاه.",
          "zekr":
              "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ\nآمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ.\n[البقرة 285 - 286]."
        },
        {
          "count": 3,
          "description":
              "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).",
          "zekr":
              "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر."
        },
        {
          "count": 1,
          "description":
              "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح.",
          "zekr":
              "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ ."
        },
        {
          "count": 3,
          "description":
              "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة.",
          "zekr":
              "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً.",
        },
        {
          "count": 4,
          "description": "من قالها أعتقه الله من النار.",
          "zekr":
              "اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.",
        },
        {
          "count": 1,
          "description": "من قالها حين يمسى أدى شكر يومه.",
          "zekr":
              "اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر."
        },
        {
          "count": 7,
          "description": "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة.",
          "zekr":
              "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم."
        },
        {
          "count": 3,
          "description": "لم يضره من الله شيء.",
          "zekr":
              "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرُ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "أَمْسَيْنا وَأَمْسَى الْمُلْكُ للهِ رَبِّ الْعَالَمَيْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَهَا."
        },
        {
          "count": 1,
          "description": "",
          "zekr":
              "اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق."
        },
        {
          "count": 10,
          "description":
              "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.",
          "zekr": "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ."
        },
        {
          "count": 100,
          "description":
              "كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان.",
          "zekr":
              "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ."
        },
        {
          "count": 1,
          "description": "ذكر طيب.",
          "zekr":
              "اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ."
        },
        {
          "count": 100,
          "description":
              "حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.",
          "zekr": "سُبْحـانَ اللهِ وَبِحَمْـدِهِ."
        },
      ]
    },
    {
      'name': 'اذكار النوم',
      'image': 'assets/m8.png',
      'Items': [
        {
          "count": 0,
          "description": "",
          "zekr":"يَجْمَعُ كَفَّيْهِ ثُمَّ يَنْفُثُ فِيهِمَا فَيَقْرَأُ فِيهِمَا:بسم الله الرحمن الرحيم\n\"قُلْ هُوَ اللَّهُ أَحَدٌ * اللَّهُ الصَّمَدُ* لَمْ يَلِدْ وَلَمْ يُولَدْ* وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ\nبسم الله الرحمن الرحيم\nقُلْ أَعُوذُ بِرَبِّ الْفَلَقِ* مِن شَرِّ مَا خَلَقَ* وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ* وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ* وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ\"\nبسم الله الرحمن الرحيم\nقُلْ أَعُوذُ بِرَبِّ النَّاسِ* مَلِكِ النَّاسِ* إِلَهِ النَّاسِ* مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ* الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ* مِنَ الْجِنَّةِ وَ النَّاسِ\nثُمَّ يَمْسَحُ بِهِمَا مَا اسْتَطَاعَ مِنْ جَسَدِهِ يَبْدَأُ بِهِمَا عَلَى رَأْسِهِ وَوَجْهِهِ وَمَا أَقبَلَ مِنْ جَسَدِهِ"    
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْـــــــــــدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ."
        },
        {
          'count': 0,
          "description": "",
          "zekr":
              "آمَنَ الرَّسُولُ بِمَا أُنزِلَ إِلَيْهِ مِن رَّبِّهِ وَالْمُؤْمِنُونَ كُلٌّ آمَنَ بِاللَّهِ وَمَلآئِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لاَ نُفَرِّقُ بَيْنَ أَحَدٍ مِّن رُّسُلِهِ وَقَالُواْ سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ* لاَ يُكَلِّفُ اللَّهُ نَفْساً إِلاَّ وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لاَ تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلاَ تَحْمِلْ عَلَيْنَا إِصْراً كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا رَبَّنَا وَلاَ تُحَمِّلْنَا مَا لاَ طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَآ أَنتَ مَوْلاَنَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي، وَبِكَ أَرْفَعُهُ، فَإِن أَمْسَكْتَ نَفْسِي فارْحَمْهَا، وَإِنْ أَرْسَلْتَهَا فَاحْفَظْهَا، بِمَا تَحْفَظُ بِهِ عِبَادَكَ الصَّالِحِينَ)."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنَّكَ خَلَقْتَ نَفْسِي وَأَنْتَ تَوَفَّاهَا، لَكَ مَمَاتُهَا وَمَحْياهَا، إِنْ أَحْيَيْتَهَا فَاحْفَظْهَا، وَإِنْ أَمَتَّهَا فَاغْفِرْ لَهَا. اللَّهُمَّ إِنِّي أَسْأَلُكَ العَافِيَةَ)."
        },
        {
          "count": 0,
          "description": "",
          "zekr": "اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ"
        },
        {
          "count": 0,
          "description": "",
          "zekr": "بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا"
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "سُبْحَانَ اللَّهِ (ثلاثاً وثلاثين) وَالْحَمْدُ لِلَّهِ (ثلاثاً وثلاثين) وَاللَّهُ أَكْبَرُ (أربعاً وثلاثينَ)."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ رَبَّ السَّمَوَاتِ السَّبْعِ وَرَبَّ الأَرْضِ، وَرَبَّ الْعَرْشِ الْعَظِيمِ، رَبَّنَا وَرَبَّ كُلِّ شَيْءٍ، فَالِقَ الْحَبِّ وَالنَّوَى، وَمُنْزِلَ التَّوْرَاةِ وَالْإِنْجِيلِ، وَالْفُرْقَانِ، أَعُوذُ بِكَ مِنْ شَرِّ كُلِّ شَيْءٍ أَنْتَ آخِذٌ بِنَاصِيَتِهِ. اللَّهُمَّ أَنْتَ الأَوَّلُ فَلَيْسَ قَبْلَكَ شَيْءٌ، وَأَنْتَ الآخِرُ فَلَيسَ بَعْدَكَ شَيْءٌ، وَأَنْتَ الظَّاهِرُ فَلَيْسَ فَوْقَكَ شَيْءٌ، وَأَنْتَ الْبَاطِنُ فَلَيْسَ دُونَكَ شَيْءٌ، اقْضِ عَنَّا الدَّيْنَ وَأَغْنِنَا مِنَ الْفَقْرِ"
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا، وَكَفَانَا، وَآوَانَا، فَكَمْ مِمَّنْ لاَ كَافِيَ لَهُ وَلاَ مُؤْوِيَ"
        },
        {
          "count": 0,
          "description": "",
          "reference": "",
          "zekr":
              "اللَّهُمَّ عَالِمَ الغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ، أَشْهَدُ أَنْ لاَ إِلَهَ إِلاَّ أَنْتَ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ الشَّيْطانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءاً، أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ"
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "يَقْرَأُ الم تَنْزِيلَ السَّجْدَة ِ،  وَتَبَارَكَ الَّذي بِيَدِهِ الْمُلْكُ"
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ أَسْلَمْتُ نَفْسِي إِلَيْكَ، وَفَوَّضْتُ أَمْرِي إِلَيْكَ، وَوَجَّهْتُ وَجْهِي إِلَيْكَ، وَأَلْجَأْتُ ظَهْرِي إِلَيْكَ، رَغْبَةً وَرَهْبَةً إِلَيْكَ، لاَ مَلْجَأَ وَلاَ مَنْجَا مِنْكَ إِلاَّ إِلَيْكَ، آمَنْتُ بِكِتَابِكَ الَّذِي أَنْزَلْتَ، وَبِنَبِيِّكَ الَّذِي أَرْسَلْتَ"
        }
      ]
    },
    {
      'name': 'اذكار الاستيقاظ',
      'image': 'assets/m5.png',
      'Items': [
        {
          "count": 0,
          "description": "",
          "zekr":
              " الْحَمْدُ للَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا، وَإِلَيْهِ النُّشُورُ "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              " لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَريكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، سُبْحَانَ اللَّهِ، وَالْحَمْدُ للَّهِ، وَلاَ إِلَهَ إِلاَّ اللَّهُ، وَاللَّهُ أَكبَرُ، وَلاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّهِ الْعَلِيِّ الْعَظِيمِ، رَبِّ اغْفرْ لِي "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              " الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي فِي جَسَدِي، وَرَدَّ عَلَيَّ رُوحِي، وَأَذِنَ لي بِذِكْرِهِ "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              " إِنَّ فِي خَلْقِ السَّمَوَاتِ وَالأَرْضِ وَاخْتِلاَفِ اللَّيْلِ وَالنَّهَارِ لَآيَاتٍ لأُوْلِي الألْبَابِ * الَّذِينَ يَذْكُرُونَ اللَّهَ قِيَاماً وَقُعُوداً وَعَلَىَ جُنُوبِهِمْ وَيَتَفَكَّرُونَ فِي خَلْقِ السَّمَوَاتِ وَالأَرْضِ رَبَّنَا مَا خَلَقْتَ هَذا بَاطِلاً سُبْحَانَكَ فَقِنَا عَذَابَ النَّارِ* رَبَّنَا إِنَّكَ مَن تُدْخِلِ النَّارَ فَقَدْ أَخْزَيْتَهُ وَمَا لِلظَّالِمِينَ مِنْ أَنصَارٍ* رَّبَّنَا إِنَّنَا سَمِعْنَا مُنَادِياً يُنَادِي لِلإِيمَانِ أَنْ آمِنُواْ بِرَبِّكُمْ فَآمَنَّا رَبَّنَا فَاغْفِرْ لَنَا ذُنُوبَنَا وَكَفِّرْ عَنَّا سَيِّئَاتِنَا وَتَوَفَّنَا مَعَ الأبْرَارِ "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "رَبَّنَا وَآتِنَا مَا وَعَدتَّنَا عَلَى رُسُلِكَ وَلاَ تُخْزِنَا يَوْمَ الْقِيَامَةِ إِنَّكَ لاَ تُخْلِفُ الْمِيعَادَ* فَاسْتَجَابَ لَهُمْ رَبُّهُمْ أَنِّي لاَ أُضِيعُ عَمَلَ عَامِلٍ مِّنكُم مِّن ذَكَرٍ أَوْ أُنثَى بَعْضُكُم مِّن بَعْضٍ فَالَّذِينَ هَاجَرُواْ وَأُخْرِجُواْ مِن دِيَارِهِمْ وَأُوذُواْ فِي سَبِيلِي وَقَاتَلُواْ وَقُتِلُواْ لأُكَفِّرَنَّ عَنْهُمْ سَيِّئَاتِهِمْ وَلأُدْخِلَنَّهُمْ جَنَّاتٍ تَجْرِي مِن تَحْتِهَا الأَنْهَارُ ثَوَاباً مِّن عِندِ اللَّهِ وَاللَّهُ عِندَهُ حُسْنُ الثَّوَابِ "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "لاَ يَغُرَّنَّكَ تَقَلُّبُ الَّذِينَ كَفَرُواْ فِي الْبِلاَدِ * مَتَاعٌ قَلِيلٌ ثُمَّ مَأْوَاهُمْ جَهَنَّمُ وَبِئْسَ الْمِهَادُ * لَكِنِ الَّذِينَ اتَّقَوْاْ رَبَّهُمْ لَهُمْ جَنَّاتٌ تَجْرِي مِنْ تَحْتِهَا الأَنْهَارُ خَالِدِينَ فِيهَا نُزُلاً مِّنْ عِندِ اللَّهِ وَمَا عِندَ اللَّهِ خَيْرٌ لِّلأَبْرَارِ * وَإِنَّ مِنْ أَهْلِ الْكِتَابِ لَمَن يُؤْمِنُ بِاللَّهِ وَمَا أُنزِلَ إِلَيْكُمْ وَمَآ أُنزِلَ إِلَيْهِمْ خَاشِعِينَ لِلَّهِ لاَ يَشْتَرُونَ بِآيَاتِ اللَّهِ ثَمَناً قَلِيلاً أُوْلَئِكَ لَهُمْ أَجْرُهُمْ عِندَ رَبِّهِمْ إِنَّ اللَّهَ سَرِيعُ الْحِسَابِ*يَا أَيُّهَا الَّذِينَ آمَنُواْ اصْبِرُواْ وَصَابِرُواْ وَرَابِطُواْ وَاتَّقُواْ اللَّهَ لَعَلَّكُمْ تُفْلِحُونَ"
        },
      ]
    },
    {
      'name': 'الرقية الشرعية',
      'image': 'assets/m2.png',
      'Items': [
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n * الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ * الرَّحْمَنِ \r\nالرَّحِيمِ * مَالِكِ يَوْمِ الدِّينِ * إِيَّاكَ نَعْبُدُ وَإِيَّاكَ *  اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ * صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "الم * ذَلِكَ الْكِتَابُ لَا رَيْبَ  هُدًى لِلْمُتَّقِينَ * الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ  وَمِمَّا رَزَقْنَاهُمْ يُنْفِقُونَ * وَالَّذِينَ يُؤْمِنُونَ بِمَا  إِلَيْكَ وَمَا أُنْزِلَ مِنْ قَبْلِكَ وَبِالْآَخِرَةِ هُمْ يُوقِنُونَ * أُولَئِكَ عَلَى هُدًى مِنْ رَبِّهِمْ وَأُولَئِكَ هُمُ الْمُفْلِحُونَ *."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "لِلَّهِ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ وَإِنْ تُبْدُوا مَا فِي أَنْفُسِكُمْ أَوْ تُخْفُوهُ يُحَاسِبْكُمْ بِهِ اللَّهُ فَيَغْفِرُ لِمَنْ يَشَاءُ وَيُعَذِّبُ مَنْ يَشَاءُ وَاللَّهُ عَلَى كُلِّ شَيْءٍ قَدِيرٌ \n* آَمَنَ الرَّسُولُ بِمَا أُنْزِلَ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ كُلٌّ آَمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ وَقَالُوا سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ \n لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا \r\nوَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا \r\nرَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "قُلْ يَا أَيُّهَا الْكَافِرُونَ * لَا أَعْبُدُ مَا تَعْبُدُونَ * وَلَا أَنْتُمْ عَابِدُونَ مَا أَعْبُدُ * وَلَا أَنَا عَابِدٌ مَا عَبَدْتُمْ  وَلَا أَنْتُمْ عَابِدُونَ مَا أَعْبُدُ * لَكُمْ دِينُكُمْ وَلِيَ دِينِ *."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "قُلْ هُوَ اللَّهُ أَحَدٌ * اللَّهُ الصَّمَدُ * لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ "
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِنْ شَرِّ مَا خَلَقَ * وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ 4 وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ *."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ * مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ *."
        },
        {
          "count": 0,
          "description":
              "فإذا قالَ ذلكَ قال الشيطانُ : حُفِظَ منِّي سائرَ اليومِ",
          "zekr":
              "أَعُوذُ بِاللَّهِ الْعَظِيمِ، وَبِوَجْهِهِ الْكَرِيمِ، وَسُلْطَانِهِ الْقَدِيمِ، مِنَ الشَّيْطَانِ الرَّجِيمِ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "أَعُوذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيمِ، مِنْ هَمْزِهِ وَنَفْخِهِ وَنَفْثِهِ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "أعوذُ بكلماتِ اللهِ التامَّةِ ، مِن كُلِّ شيطانٍ وهامَّةٍ ، ومِن كُلِّ عَيْنٍ لامَّةٍ."
        },
        {
          "count": 0,
          "description": "",
          "zekr": "أعوذُ بكلماتِ اللهِ التامَّاتِ مِن شرِّ ما خَلق."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِسْمِ اللَّهِ أَرْقِيكَ، مِنْ كُلِّ شَيْءٍ يُؤْذِيكَ، مِنْ شَرِّ كُلِّ نَفْسٍ أَوْ عَيْنِ حَاسِدٍ، اللَّهُ يَشْفِيكَ، بِسْمِ اللَّهِ أَرْقِيكَ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِسْمِ اللَّهِ (ثَلَاثًا)، أَعُوذُ بِاللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ (سَبْعَ مَرَّاتٍ)."
        },
        {
          "count": 7,
          "description": "",
          "zekr":
              "أَسْأَلُ اللَّهَ الْعَظِيمَ رَبَّ الْعَرْشِ الْعَظِيمِ، أَنْ يَشْفِيَكَ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ ربَّ النَّاسِ، أَذْهِب الْبَأسَ، واشْفِ، أَنْتَ الشَّافي لا شِفَاءَ إِلاَّ شِفَاؤُكَ، شِفاءً لا يُغَادِرُ سقَماً."
        },
        {
          "count": 0,
          "description": "",
          "zekr": "اللَّهُمَّ اشْفِ عَبْدَكَ، وصَدِّقْ رَسُولَك."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللهُمَّ بَارِكْ عَلَيْهِ، وَأَذْهِبْ عَنْهُ حَرَّ الْعَيْنِ وَبَرْدَهَا وَوَصَبَهَا."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنَّا نَسْأَلُكَ مِنْ خَيْرِ مَا سَأَلَكَ مِنْهُ نَبِيُّكَ مُحَمَّدٌ صلى الله عليه وسلم وَنَعُوذُ بِكَ مِنْ شَرِّ مَا اسْتَعَاذَ مِنْهُ نَبِيُّكَ مُحَمَّدٌ صلى الله عليه وسلم وَأَنْتَ الْمُسْتَعَانُ، وَعَلَيْكَ الْبَلَاغُ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "لَا إِلَهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْكَرِيمِ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْعَرْشِ الْعَظِيمِ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "رَبّنَا الَّلهُ الذِي فِي السَّمَاءِ، تَقَدَّسَ اسمُكَ، أَمرُكَ فِي السَّمَاءِ وَالأَرْضِ، كَمَا رَحمَتُكَ فِي السَّمَاءِ فَاجْعَلْ رَحْمَتَكَ فِي الأَرْضِ، اغفِر لَنَا حَوْبَنَا وَخَطَايَانَا، أَنتَ رَبُّ الطَّيِّبِينَ، أَنزِلْ رَحْمَةً مِن رَحمَتِكَ، وَشِفَاءً مِن شِفَائِكَ عَلَى هَذَا الوَجَعِ، فَيَبرَأ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ الَّتِي لَا يُجَاوِزُهُنَّ بَرٌّ وَلَا فَاجِرٌ، مِنْ شَرِّ مَا خَلَقَ، وَبَرَأَ، وَذَرَأَ، وَمِنْ شَرِّ مَا يَنْزِلُ مِنَ السَّمَاءِ، وَمِنْ شَرِّ مَا يَعْرُجُ فِيهَا، وَمِنْ شَرِّ مَا ذَرَأَ فِي الْأَرْضِ، وَمِنْ شَرِّ مَا يَخْرُجُ مِنْهَا، وَمِنْ شَرِّ فِتَنِ اللَّيْلِ وَالنَّهَارِ، وَمِنْ شَرِّ كُلِّ طَارِقٍ إِلَّا طَارِقًا يَطْرُقُ بِخَيْرٍ يَا رَحْمَنُ ."
        },
        {
          "count": 3,
          "description": "",
          "zekr":
              "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "أَعُوذُ بِكَلِمَاتِ اللهِ التَّامَّةِ مِنْ غَضَبِهِ وَعِقَابِهِ ، وَشَرِّ عِبَادِهِ ، وَمَنْ هَمَزَاتِ الشَّيَاطِينِ ، وَأَنْ يَحْضُرُونِ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِسْمِ اللَّهِ الْعَظِيمِ ، أَعُوذُ بِاللَّهِ الْكَبِيرِ مِنْ شَرِّ كُلِّ عِرْقٍ نَعَّارٍ ، وَمِنْ شَرِّ حَرِّ النَّارِ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِسْمِ اللهِ تربَةُ أَرْضِنَا، بِرِيقةِ بَعْضِنَا، يُشْفَى سَقِيمُنَا، بإِذْنِ رَبِّنَا."
        },
        {
          "count": 7,
          "description": "",
          "zekr":
              "أَسْأَلُ اللَّهَ الْعَظِيمَ رَبَّ الْعَرْشِ الْعَظِيمِ، أَنْ يُعَافِيَكَ وَيَشْفِيَكَ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ بَرِّدْ قَلْبِي بِالثَّلْجِ وَالْبَرَدِ وَالْمَاءِ الْبَارِدِ ، اللَّهُمَّ نَقِّ قَلْبِي مِنَ الْخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الْأَبْيَضَ مِنَ الدَّنَسِ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ إِنِّي أَعُوذُ بِوَجْهِكَ الْكَرِيمِ وَكَلِمَاتِكَ التَّامَّةِ مِنْ شَرِّ مَا أَنْتَ آخِذٌ بِنَاصِيَتِهِ، اللَّهُمَّ أَنْتَ تَكْشِفُ الْمَغْرَمَ وَالْمَأْثَمَ، اللَّهُمَّ لَا يُهْزَمُ جُنْدُكَ، وَلَا يُخْلَفُ وَعْدُكَ، وَلَا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ، سُبْحَانَكَ وَبِحَمْدِكَ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِاسْمِ اللَّهِ يُبْرِيكَ، وَمِنْ كُلِّ دَاءٍ يَشْفِيكَ، وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ، وَشَرِّ كُلِّ ذِي عَيْنٍ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ اشْفِ عَبْدَكَ يَنْكَأُ لَكَ عَدُوًّا ، أَوْ يَمْشِي لَكَ إِلَى صَلاةٍ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ  فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ."
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              "بِسْمِ اللَّهِ أرْقِيكَ، مِنْ كُلِّ شَيْءٍ يُؤْذِيكَ، وَمِنْ شَرِّ كُلِّ نَفْسٍ أَوْ عَيْنِ حَاسِدٍ، اللهُ يَشْفِيكَ، بِسمِ اللَّهِ أَرقِيكَ"
        }
      ]
    },
    {
      'name': 'دعاء',
      'image': 'assets/m7.png',
      'Items': [
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ يَا بَارِئَ البَرِيَّاتِ ، وَغَافِرَ الخَـطِيَّاتِ ، وَعَالِمَ الخَفِيَّاتِ ، المُطَّلِعُ عَلَى الضَّمَائِرِ وَالنِّيَّاتِ ، يَا مَنْ أَحَاطَ بِكُلِّ شَيءٍ عِلْماً ، وَوَسِعَ كُلّ شَيْءٍ رَحْمَةً ، وَقَهَرَ كُلّ مَخْلُوقٍ عِزَّةً وَحُكْماً ، اغْفِرْ لِي ذُنُوبِي ، وَاسْتُرْ عُيُوبِيَ ، وَتَجَاوَزْ عَنْ سَيِّئَاتِيَ إِنَّكَ أَنْتَ الْغَفُورُ الرَّحِيمُ. ',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ يَا سَمِيعَ الدَّعَوَاتِ ، يَا مُقِيلَ العَثَرَاتِ ، يَاقَاضِيَ الحَاجَاتِ ، يَا كَاشِفَ الكَرُبَاتِ ، يَا رَفِيعَ الدَّرَجَاتِ ، وَيَا غَافِرَ الزَّلاَّتِ ، اغْفِرْ لِلْمُسْلِمِينَ وَالمُسْلِمَاتِ ، وَالمُؤْمِنِينَ وَالمُؤْمِنَاتِ، الأحْيَاءِ مِنْهُم وَالأمْوَاتِ ، إِنَّكَ سَمِيعٌ قَرِيبٌ مُجِيبُ الدَّعَوَاتِ.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ إِنِّي أَسْأَلُكَ بِاسْمِكَ الأَعْظَمِ ، الَّذِي إِذَا دُعِيتَ بِهِ أَجَبْتَ ، وَإِذَا سُئِلْتَ بِهِ أَعْطَـيْتَ ، أَسْأَلُكَ بِأَنِّي أَشُهَدُ أَنَّكَ أَنْتَ اللهُ لا إِلَهَ إِلاَّ أَنْتَ ، الأَحَدُ الصَّمَدُ ، الَّذِي لَمْ يَلِدْ، وَلَمْ يَولَدْ ، وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ ؛ أَنْ تَغْفِرَ لِي ذُنُوبِي ، إِنَّكَ أَنْتَ الغَفُورُ الرَّحِيمُ.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ إِنَّكَ عَفُوٌّ كَرِيمٌ تُحِبُّ العّفْوَ فَاعْفُ عَنِّي.\nاللَّهُمَّ رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَلِمَنْ دَخَلَ بَيْتِيَ مُؤْمِنًا وَلِلْمُؤْمِنِينَ وَالمُؤْمِنَاتِ.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ اغْفِرْ لِي خَطِيئَتِي وَجَهْلِي ، وَإِسْرَافِي فِي أَمْرِي ، وَمَا أَنْتَ أَعْـلَمُ بِهِ مِنّـِي ، اللَّهُمَّ اغْفِرْ لِي هَزْلِي وَجِدِّي ، وَخَطَئِي وَعَمْدِي ، وَكُلُّ ذَلِكَ عِنْدِي.اللَّهُمَّ رَبِّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلاَّ أَنْتَ خَلَقْتَنِي وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَااسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي فَإنَّهُ لا يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والمغرب ، اللهم اغسلني من خطاياي بالماء والثلج والبرد ، اللهم نقني من الخطايا كما ينقى الثوب الأبيض مـن الدنس.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللهم إني ظلمت نفسي ظلما كثيرا ، ولا يغفر الذنوب إلا أنت. فاغفر لي مغفرة من عندك ، وارحمني إنك أنت الغفور الرحيم.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلّهُ ، دِقَّهُ وَجُلَّهُ ، وَأَوَّلَهُ وَآخِرَهَ ، وَعَلاَنِيَتَهَ وَسِرَّهُ.\nاللَّهُمَّ اغْفِرْ لِي ذَنْبِي ، وَوَسِّعْ لِي فِي دَارِي ، وَبَارِكْ لِي فِي رِزْقِي.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ رَبَّنَا لا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا ، رَبَّنَا وَلا تَحْمِلْ عَلَينَا إِصْرَاً كَمَا حَمَلْتَهَ عَلَى الَّذِينَ مِنْ قَبْلِنَا ، رَبَّنَا وَلا تُحَمِّلْنَا مَا لا طَاقَةَ لَنَا بِهِ ، وَاعْفُ عَنَّا وّاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلانَا فَانْصُرْنَا عَلَى القَوْمِ الكَافِرِينَ.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              'اللَّهُمَّ اغْفِرْ لِي خَطِيئَتِي وَجَهْلِي ، وَإِسْرَافِي فِي أَمْرِي ، وَمَا أَنْتَ أَعْـلَمُ بِهِ مِنّـِي ، اللَّهُمَّ اغْفِرْ لِي هَزْلِي وَجِدِّي ، وَخَطَئِي وَعَمْدِي ، وَكُلُّ ذَلِكَ عِنْدِي.اللَّهُمَّ رَبِّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي.',
        },
        {
          "count": 0,
          "description": "",
          "zekr":
              ' اللهمَّ صلِّ وسلِّمْ وبارِكْ علَى عَبْدِكَ ورَسُوْلِكَ محمَّد وعلى آله وصحبه أجمعين.',
        }
      ]
    },
  ];

  Future change_azkar_count(int category_index, int Item_index) async {
    var count = Azquar_Category[category_index]['Items'][Item_index]['count'];
    if (count > 1) {
      Azquar_Category[category_index]['Items'][Item_index]['count'] -= 1;
    }
    notifyListeners();
  }

  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(
        icon: Image.asset('assets/sepha.png'), label: "سبحة"),
    BottomNavigationBarItem(icon: Text(''), label: " قران كريم"),
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/zekr1.png',
          width: 25,
          fit: BoxFit.fill,
        ),
        label: "اذكار"),
  ];

  int bottomIndex = 1;
  List Screens = [
    SephaScreen(),
    QuranSurahScreen(),
    AzkarScreen(),
  ];

  void ChangeBottomNavBar(int index) {
    bottomIndex = index;
    if (index == 0) {
      SephaScreen();
    } else if (index == 1) {
      QuranSurahScreen();
    } else {
      AzkarScreen();
    }
    notifyListeners();
  }
}
