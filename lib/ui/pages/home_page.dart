import 'package:chendra/cubit/auth_cubit.dart';
import 'package:chendra/shared/theme.dart';
import 'package:chendra/ui/widgets/video_horizontal.dart';
import 'package:chendra/ui/widgets/article_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, ${state.user.name}',
                        style: blacktTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Semoga Harimu Menyenangkan 😊',
                        style: greytTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/user.png'))),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              bottom: 20,
            ),
            child: Text(
              'Videos',
              style: blacktTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  VideoHorizontal(
                    title: "Bisnis Itu Mudah - Cara Gampang Memulai Bisnis",
                    thumb:
                        "assets/Bisnis Itu Mudah - Cara Gampang Memulai Bisnis.png",
                    videoUrl: "assets/Video1.mp4",
                  ),
                  SizedBox(width: 20),
                  VideoHorizontal(
                    title:
                        "[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra",
                    thumb:
                        "assets/[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra.png",
                    videoUrl: "assets/Video2.mp4",
                  ),
                  SizedBox(width: 20),
                  VideoHorizontal(
                    title:
                        "Dinasti Motekar Academy - OVERVIEW by [ACEP HENDRA]",
                    thumb:
                        "assets/Dinasti Motekar Academy - OVERVIEW by [ACEP HENDRA].png",
                    videoUrl: "assets/Video3.mp4",
                  ),
                  SizedBox(width: 20),
                  VideoHorizontal(
                    title: "Penting ga sih SEO",
                    thumb: "assets/Penting ga sih SEO.png",
                    videoUrl: "assets/Video4.mp4",
                  ),
                  SizedBox(width: 20),
                  VideoHorizontal(
                    title: "Bisnis Itu Mudah - Cara Gampang Memulai Bisnis",
                    thumb:
                        "assets/Bisnis Itu Mudah - Cara Gampang Memulai Bisnis.png",
                    videoUrl: "assets/Video1.mp4",
                  ),
                ],
              ),
            ),
          ),
        ]),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Artikel',
              style: blacktTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            ArticleTemplate(
              index: 0,
              name: 'Apa Itu PDMK?',
              penulis: 'Admin',
              imageUrl: 'assets/pmdk.png',
              description:
                  'PDMK adalah salah satu sistem seleksi Penelusuran Minat dan Kemampuan Politeknik Negeri Se Indonesia setiap tahun seleksi ini dipenuhi sekitar dari 200 ribu peserta dari berbagai Poltek Negeri yang ada di Indonesia mulai dari sabang sampai merauke, lebih dari 43 Politeknik Negeri yang terdaftar jalur seleksi ini, jalur ini sekaligus menjadi kesempatan bagi peserta terutama lulusan Sekolah Menengah kejuruan yang bisa diikuti bagi mereka yang berprestasi dari beberapa bidang secara akademik maupun non akademik.\nSumber: kampusyuk.com',
            ),
            ArticleTemplate(
              index: 1,
              name: 'Apa itu Student Exchange?',
              penulis: 'Admin',
              imageUrl: 'assets/studentexchange.png',
              description:
                  'Student Exchange program atau pertukaran pelajar adalah program bagi pelajar untuk mencoba sistem pendidikan di luar negeri dalam jangka waktu tertentu. Jangka waktu ini dapat bervariasi, mulai dari bulanan hingga satu tahun akademik, tergantung jenis student exchange yang dipilih.\nSumber: kampusyuk.com',
            ),
            ArticleTemplate(
              index: 2,
              name: 'Mengenal Apa Itu Metaverse',
              penulis: 'Admin',
              imageUrl: 'assets/metaverse.png',
              description:
                  'Mengenal Istilah Metaverse Sebenarnya,\norang pertama yang terkenal telah menciptakan istilah metaverse adalah Neal Stephenson. Ia menyebutkan istilah tersebut pada novelnya di tahun 1992 yang berjudul Snow Crash. Istilah metaverse merujuk pada dunia virtual 3D yang dihuni oleh avatar orang sungguhan. Istilah ini tidak memiliki definisi yang bisa diterima secara universal. Anggap saja metaverse adalah internet yang diberikan dalam bentuk 3D. Zuckerberg menggambarkan metaverse sebagai lingkungan virtual yang bisa Anda masuki, alih-alih hanya melihat layar. Jika dipersingkat, ini adalah dunia komunitas virtual tanpa akhir yang saling terhubung. Di mana, orang-orang dapat bekerja, bertemu, bermain dengan menggunakan headset realitas virtual, kacamata augmented reality, aplikasi smartphone dan atau perangkat lainnya. Gambaran sederhana yang diungkapkan oleh Facebook tentang metaverse adalah sebuah seperangkat ruang virtual, tempat seseorang dapat membuat dan menjelajah dengan pengguna internet lainnya yang tidak berada pada ruang fisik yang sama dengan orang tersebut.\nSumber: cnbcindonesia.com',
            ),
            ArticleTemplate(
              index: 3,
              name: 'Crypto: Mengenal Uang Kripto',
              penulis: 'Admin',
              imageUrl: 'assets/crypto.png',
              description:
                  'Cryptocurrency atau crypto adalah mata uang virtual yang dijamin oleh cryptography. Sementara itu, definisi lain dari mata uang kripto adalah mata uang yang digunakan untuk bertransaksi satu orang dengan orang lain secara online. Mata uang ini mulai populer tidak hanya di Indonesia, juga di luar negeri. Pada Februari 2020, terdapat 10 negara yang masyrakatnya memiliki uang kripto dalam jumlah banyak. Nigeria merajai posisi dengan persentase 34 persen diikuti dengan Vietnam dan Filipina dengan persentase sebesar 21 persen dan 20 persen.\nSumber: katadata.co.id',
            ),
            ArticleTemplate(
              index: 4,
              name: 'Apa itu Saham',
              penulis: 'Admin',
              imageUrl: 'assets/saham.png',
              description:
                  'Saham (stock) merupakan salah satu instrumen pasar keuangan yang paling popular. Menerbitkan saham merupakan salah satu pilihan perusahaan ketika memutuskan untuk pendanaan perusahaan. Pada sisi yang lain, saham merupakan instrument investasi yang banyak dipilih para investor karena saham mampu memberikan tingkat keuntungan yang menarik. Saham dapat didefinisikan sebagai tanda penyertaan modal seseorang atau pihak (badan usaha) dalam suatu perusahaan atau perseroan terbatas. Dengan menyertakan modal tersebut, maka pihak tersebut memiliki klaim atas pendapatan perusahaan, klaim atas asset perusahaan, dan berhak hadir dalam Rapat Umum Pemegang Saham (RUPS).\nSumber: idx.co.id',
            ),
          ],
        ),
      );
    }

    return ListView(children: [
      header(),
      popularDestinations(),
      newDestinations(),
    ]);
  }
}
