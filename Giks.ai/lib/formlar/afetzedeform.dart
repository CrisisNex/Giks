import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class AfetzedeCikarmaFormu extends StatefulWidget {
  const AfetzedeCikarmaFormu({Key? key});

  @override
  _AfetzedeCikarmaFormuState createState() => _AfetzedeCikarmaFormuState();
}

class _AfetzedeCikarmaFormuState extends State<AfetzedeCikarmaFormu> {
  ValueNotifier<GeoPoint?> notifier = ValueNotifier(null);
  GeoPoint? selectedPoint;
  String calismaAlaniKimligi = '';
  String afetzedeNumarasi = '';
  String afetzedebileklikNumarasi = '';
  String afetzedeXKoordinati = '';
  String afetzedeYKoordinati = '';
  String adres = '';
  String ekipKimligi = '';
  String cikarmaTarihi = '';
  String cikarmaSaati = '';
  String afetzedeBilgileri = '';
  String afetzedeKatPozisyonu = '';
  String yapidakiYeri = '';
  String? imagePath;
  String cikarmasuresi = '';
  String teslimbirim = '';
  String digerbilgiler = '';
  String formudolduran = '';
  bool oluDurumu = false;
  bool hayattaDurumu = false;
  final picker = ImagePicker();
  bool yokSakatlikDurumu = false;
  bool stabilSakatlikDurumu = false;
  bool kritikSakatlikDurumu = false;
  bool halkAileSecili = false;
  bool ambulansSecili = false;
  bool tibbiEkipSecili = false;
  bool sahaHastanesiSecili = false;
  bool helikopterSecili = false;
  bool hastaneSecili = false;
  bool morgSecili = false;
  bool digerSecili = false;

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        imagePath = pickedFile.path;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text('Afetzede Çıkarma Formu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Image(
                      image: AssetImage('images/logo_final.png'),
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Afetzede Çıkarma Formu',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          calismaAlaniKimligi = value;
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: 'E.1 Çalışma Alanı Kimliği',
                      ),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          afetzedeNumarasi = value;
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: 'V.1 Afetzede Numarası',
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ValueListenableBuilder<GeoPoint?>(
                          valueListenable: notifier,
                          builder: (ctx, p, child) {
                            return Center(
                              child: Text(
                                "${p?.toString() ?? ""}",
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                var p = await showSimplePickerLocation(
                                  context: context,
                                  isDismissible: true,
                                  title: "Adres seçimi",
                                  textConfirmPicker: "Seç",
                                  initZoom: 8,
                                  initPosition: GeoPoint(
                                    latitude: 38.4621917,
                                    longitude: 27.1487862,
                                  ),
                                  radius: 8.0,
                                );
                                if (p != null) {
                                  notifier.value = p;
                                  setState(() {
                                    selectedPoint =
                                        p; // Seçilen noktayı güncelle
                                  });
                                }
                              },
                              child: Text("Adres seçiniz"),
                            ),
                          ],
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              adres = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'E.3 Adres',
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              ekipKimligi = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'G.3 Ekip Kimliği',
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    cikarmaTarihi = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: 'V.2 Çıkarma Tarihi',
                                ),
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    cikarmaSaati = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: 'V.3 Çıkarma Saati',
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              afetzedeBilgileri = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'V.4 Afetzede Bilgileri',
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              afetzedeKatPozisyonu = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'V.5 Afetzede Kat Pozisyonu',
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              yapidakiYeri = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'V.6 Yapıdaki Yeri',
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Form(
                          child: Column(
                            children: [
                              if (imagePath != null)
                                Image.file(
                                  File(imagePath!),
                                  width: 150,
                                  height: 150,
                                ),
                              ElevatedButton(
                                onPressed: _pickImage,
                                child: const Text('Afetzede Fotoğraf Seç'),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              cikarmasuresi = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'V.8 Çıkarmada Geçen Süre',
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'V.9 Afetzede Durumu',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: oluDurumu,
                              onChanged: (value) {
                                setState(() {
                                  oluDurumu = value!;
                                });
                              },
                            ),
                            const Text('Ölü'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: hayattaDurumu,
                              onChanged: (value) {
                                setState(() {
                                  hayattaDurumu = value!;
                                });
                              },
                            ),
                            const Text('Hayatta'),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'V.10 Afetzede Sakatlanma Durumu',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: yokSakatlikDurumu,
                              onChanged: (value) {
                                setState(() {
                                  yokSakatlikDurumu = value!;
                                });
                              },
                            ),
                            const Text('Yok'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: stabilSakatlikDurumu,
                              onChanged: (value) {
                                setState(() {
                                  stabilSakatlikDurumu = value!;
                                });
                              },
                            ),
                            const Text('Stabil'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: kritikSakatlikDurumu,
                              onChanged: (value) {
                                setState(() {
                                  kritikSakatlikDurumu = value!;
                                });
                              },
                            ),
                            const Text('Kritik'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'V.11 Afetzedenin Teslim Edildiği Birim',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Halk/Aile
                        Row(
                          children: [
                            Checkbox(
                              value: halkAileSecili,
                              onChanged: (value) {
                                setState(() {
                                  halkAileSecili = value!;
                                });
                              },
                            ),
                            const Text('Halk/Aile'),
                          ],
                        ),

                        // Ambulans
                        Row(
                          children: [
                            Checkbox(
                              value: ambulansSecili,
                              onChanged: (value) {
                                setState(() {
                                  ambulansSecili = value!;
                                });
                              },
                            ),
                            const Text('Ambulans'),
                          ],
                        ),

                        // Tıbbi Ekip
                        Row(
                          children: [
                            Checkbox(
                              value: tibbiEkipSecili,
                              onChanged: (value) {
                                setState(() {
                                  tibbiEkipSecili = value!;
                                });
                              },
                            ),
                            const Text('Tıbbi Ekip'),
                          ],
                        ),

                        // Saha Hastanesi
                        Row(
                          children: [
                            Checkbox(
                              value: sahaHastanesiSecili,
                              onChanged: (value) {
                                setState(() {
                                  sahaHastanesiSecili = value!;
                                });
                              },
                            ),
                            const Text('Saha Hastanesi'),
                          ],
                        ),

                        // Helikopter
                        Row(
                          children: [
                            Checkbox(
                              value: helikopterSecili,
                              onChanged: (value) {
                                setState(() {
                                  helikopterSecili = value!;
                                });
                              },
                            ),
                            const Text('Helikopter'),
                          ],
                        ),

                        // Hastane
                        Row(
                          children: [
                            Checkbox(
                              value: hastaneSecili,
                              onChanged: (value) {
                                setState(() {
                                  hastaneSecili = value!;
                                });
                              },
                            ),
                            const Text('Hastane'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: hastaneSecili,
                              onChanged: (value) {
                                setState(() {
                                  morgSecili = value!;
                                });
                              },
                            ),
                            const Text('Morg'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: hastaneSecili,
                              onChanged: (value) {
                                setState(() {
                                  digerSecili = value!;
                                });
                              },
                            ),
                            const Text('Diğer'),
                          ],
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              teslimbirim = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText:
                                'V.12 Teslim Edilen Birimin İrtibat Bilgileri',
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              digerbilgiler = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText:
                                'V.13 Diğer Bilgiler (diğer ekip bilgileri)',
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              formudolduran = value;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'Formu Dolduran İsim Soyisim Unvan',
                          ),
                        ),

                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Formu Gönder'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController textEditingController = TextEditingController();
  late PickerMapController controller = PickerMapController(
    initMapWithUserPosition: UserTrackingOption(),
  );

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(textOnChanged);
  }

  void textOnChanged() {
    controller.setSearchableText(textEditingController.text);
  }

  @override
  void dispose() {
    textEditingController.removeListener(textOnChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPickerLocation(
      controller: controller,
      topWidgetPicker: Padding(
        padding: const EdgeInsets.only(
          top: 56,
          left: 8,
          right: 8,
        ),
        child: Column(
          children: [
            Row(
              children: [
                PointerInterceptor(
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
                Expanded(
                  child: PointerInterceptor(
                    child: TextField(
                      controller: textEditingController,
                      onEditingComplete: () async {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        suffix: ValueListenableBuilder<TextEditingValue>(
                          valueListenable: textEditingController,
                          builder: (ctx, text, child) {
                            if (text.text.isNotEmpty) {
                              return child!;
                            }
                            return SizedBox.shrink();
                          },
                          child: InkWell(
                            focusNode: FocusNode(),
                            onTap: () {
                              textEditingController.clear();
                              controller.setSearchableText("");
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
                            },
                            child: Icon(
                              Icons.close,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        focusColor: Colors.black,
                        filled: true,
                        hintText: "search",
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        fillColor: Colors.grey[300],
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            TopSearchWidget()
          ],
        ),
      ),
      bottomWidgetPicker: Positioned(
        bottom: 12,
        right: 8,
        child: PointerInterceptor(
          child: FloatingActionButton(
            onPressed: () async {
              GeoPoint p = await controller.selectAdvancedPositionPicker();
              Navigator.pop(context, p);
            },
            child: Icon(Icons.arrow_forward),
          ),
        ),
      ),
      pickerConfig: CustomPickerLocationConfig(
        initZoom: 8,
      ),
    );
  }
}

class TopSearchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopSearchWidgetState();
}

class _TopSearchWidgetState extends State<TopSearchWidget> {
  late PickerMapController controller;
  ValueNotifier<GeoPoint?> notifierGeoPoint = ValueNotifier(null);
  ValueNotifier<bool> notifierAutoCompletion = ValueNotifier(false);

  late StreamController<List<SearchInfo>> streamSuggestion = StreamController();
  late Future<List<SearchInfo>> _futureSuggestionAddress;
  String oldText = "";
  Timer? _timerToStartSuggestionReq;
  final Key streamKey = Key("streamAddressSug");

  @override
  void initState() {
    super.initState();
    controller = CustomPickerLocation.of(context);
    controller.searchableText.addListener(onSearchableTextChanged);
  }

  void onSearchableTextChanged() async {
    final v = controller.searchableText.value;
    if (v.length > 3 && oldText != v) {
      oldText = v;
      if (_timerToStartSuggestionReq != null &&
          _timerToStartSuggestionReq!.isActive) {
        _timerToStartSuggestionReq!.cancel();
      }
      _timerToStartSuggestionReq =
          Timer.periodic(Duration(seconds: 3), (timer) async {
        await suggestionProcessing(v);
        timer.cancel();
      });
    }
    if (v.isEmpty) {
      await reInitStream();
    }
  }

  Future reInitStream() async {
    notifierAutoCompletion.value = false;
    await streamSuggestion.close();
    setState(() {
      streamSuggestion = StreamController();
    });
  }

  Future<void> suggestionProcessing(String addr) async {
    notifierAutoCompletion.value = true;
    _futureSuggestionAddress = addressSuggestion(
      addr,
      limitInformation: 5,
    );
    _futureSuggestionAddress.then((value) {
      streamSuggestion.sink.add(value);
    });
  }

  @override
  void dispose() {
    controller.searchableText.removeListener(onSearchableTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: notifierAutoCompletion,
      builder: (ctx, isVisible, child) {
        return AnimatedContainer(
          duration: Duration(
            milliseconds: 500,
          ),
          height: isVisible ? MediaQuery.of(context).size.height / 4 : 0,
          child: Card(
            child: child!,
          ),
        );
      },
      child: StreamBuilder<List<SearchInfo>>(
        stream: streamSuggestion.stream,
        key: streamKey,
        builder: (ctx, snap) {
          if (snap.hasData) {
            return ListView.builder(
              itemExtent: 50.0,
              itemBuilder: (ctx, index) {
                return PointerInterceptor(
                  child: ListTile(
                    title: Text(
                      snap.data![index].address.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                    onTap: () async {
                      /// go to location selected by address
                      controller.goToLocation(
                        snap.data![index].point!,
                      );

                      /// hide suggestion card
                      notifierAutoCompletion.value = false;
                      await reInitStream();
                      FocusScope.of(context).requestFocus(
                        new FocusNode(),
                      );
                    },
                  ),
                );
              },
              itemCount: snap.data!.length,
            );
          }
          if (snap.connectionState == ConnectionState.waiting) {
            return Card(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
