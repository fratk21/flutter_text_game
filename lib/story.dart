//character
// main characters Aybars Çelik
// second character Taner Cansız

class Story {
  final String id;
  final String text;
  final List<Choice> choices;

  Story({required this.id, required this.text, required this.choices});
}

class Choice {
  final String text;
  final String nextStoryId;

  Choice({required this.text, required this.nextStoryId});
}

final initialStory = Story(
  id: '0',
  text: 'Merhaba Aybars  nasılsın?',
  choices: [
    Choice(text: 'İyiyim, sen nasılsın?', nextStoryId: '1'),
    Choice(text: 'İyiyim', nextStoryId: '2'),
  ],
);

final stories = [
  Story(
    id: '1',
    text:
        'Aybars, iyi olduğunu duyduğuma sevindim ama üzgünüm, bu durum gerçekten kötü. Nasıl hissediyorsun?',
    choices: [
      Choice(
          text:
              'Fiziksel olarak zor olsa da, hayatta olmam bile bir mucize. Bu durumu kabullenmeye çalışıyorum ama zor olacak gibi.',
          nextStoryId: '2'),
      Choice(
          text:
              'Bu durum beni oldukça etkiledi, ama mücadele etmek zorundayım. Umutsuzluğa kapılmamalıyım.',
          nextStoryId: '3'),
    ],
  ),
  Story(
    id: '2',
    text:
        ' Eminim ki zor bir süreç olacak. Sana nasıl yardımcı olabileceğimi düşünüyorum. Belki bu olayı çözmeye yardımcı olabiliriz.',
    choices: [
      Choice(
          text:
              'Fiziksel olarak zor olsa da, hayatta olmam bile bir mucize. Bu durumu kabullenmeye çalışıyorum ama zor olacak gibi.',
          nextStoryId: '3'),
      Choice(
          text:
              'Bu durum beni oldukça etkiledi, ama mücadele etmek zorundayım. Umutsuzluğa kapılmamalıyım.',
          nextStoryId: '4'),
    ],
  ),
  // Aşama 3
  Story(
    id: '3',
    text:
        'Aybars, suikatin arkasındaki sırrı çözmek isteyen acemi dedektife yardımcı olmaya karar verir.',
    choices: [
      Choice(
          text:
              'Nasıl yardımcı olabileceğini sorduğunda, Aybars acemi dedektife suikat hakkında bilgi verir.',
          nextStoryId: '5'),
      Choice(
          text:
              'Suikat olayını detaylarıyla anlatır ve acemi dedektife yardım istemeye devam eder.',
          nextStoryId: '6'),
    ],
  ),
// Aşama 4
  Story(
    id: '4',
    text:
        'Aybars, yatalak olmasına rağmen, telefon üzerinden acemi dedektife suikatin ipuçlarını verir ve ona yol gösterir.',
    choices: [
      Choice(
          text: 'Acemi dedektif, verilen ipuçlarını dikkatlice takip eder.',
          nextStoryId: '13'),
      Choice(
          text:
              'Acemi dedektif, ipuçlarını yanlış anlar ve farklı bir yolda ilerlemeye karar verir.',
          nextStoryId: '14'),
    ],
  ),

//...
// Aşama 5
  Story(
    id: '5',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişiyi araştırmaya başlarlar.',
    choices: [
      Choice(
          text:
              'İpuçlarını takip ederek suikat düzenleyen kişiyi bulmaya çalışırlar.',
          nextStoryId: '11'),
      Choice(
          text: 'Tehlikeli olduğunu düşünerek araştırmayı bırakırlar.',
          nextStoryId: '12'),
    ],
  ),
// Aşama 6
  Story(
    id: '6',
    text:
        'Aybars, suikatin arkasındaki kişinin ona zarar vermek istediğini düşünerek acemi dedektife yardım etmeye karar verir.',
    choices: [
      Choice(
          text:
              'Acemi dedektife suikatin arkasındaki kişiyi bulmalarına yardım etmesi için bazı ipuçları verir.',
          nextStoryId: '16'),
      Choice(
          text:
              'Daha fazla tehlikeye girmemeleri için acemi dedektife yardım etmemesi gerektiğini söyler.',
          nextStoryId: '17'),
    ],
  ),
// Aşama 7
  Story(
    id: '7',
    text:
        'Aybars, geçmişte işlediği suçlardan dolayı suçluluk duysa da, yeni bir hayata başlamak istediğini belirtir.',
    choices: [
      Choice(
          text:
              'Acemi dedektife suikatin arkasındaki kişinin kim olduğunu anlatır.',
          nextStoryId: '18'),
      Choice(
          text:
              'Geçmişin suçlarından dolayı Aybars"a suçlayıcı bir şekilde yaklaşır.',
          nextStoryId: '19'),
    ],
  ),
// Aşama 8
  Story(
    id: '8',
    text:
        'Aybars, suçlarının arkasında olduğunu kabul eder ve pişmanlığını dile getirir.',
    choices: [
      Choice(
          text:
              'Aybars"ın geçmişteki suçlarından dolayı ona yardım etmeyi reddeder.',
          nextStoryId: '20'),
      Choice(
          text:
              'Aybars"a yardım etmeye karar verir ve suikatin arkasındaki sırrı çözmeye çalışır.',
          nextStoryId: '21'),
    ],
  ),
// Aşama 9
  Story(
    id: '9',
    text:
        'Aybars, adanın huzurlu ve sessiz atmosferinin kendisine iyi geldiğini söyler.',
    choices: [
      Choice(
          text: 'Adada yaşamanın avantajlarını sorgular.', nextStoryId: '22'),
      Choice(
          text: 'Aybars"a adanın ne kadar güvenli olduğunu anlatır.',
          nextStoryId: '23'),
    ],
  ),
// Aşama 10
  Story(
    id: '10',
    text:
        'Aybars, yalnız yaşamanın bazen zor olduğunu ancak sessizliği sevdiğini ifade eder.',
    choices: [
      Choice(
          text:
              'Yalnızlığın getirdiği zorlukları daha fazla tartışmaya devam eder.',
          nextStoryId: '24'),
      Choice(
          text: 'Acemi dedektife yalnız yaşamanın avantajlarını anlatır.',
          nextStoryId: '25'),
    ],
  ),
// Aşama 11
  Story(
    id: '11',
    text:
        'Aybars ve acemi dedektif, ipuçlarını takip ederek suikatin arkasındaki kişiyi bulmaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Buldukları ipuçlarından şüphelenir ve başka bir yönde araştırmaya karar verirler.',
          nextStoryId: '26'),
      Choice(
          text:
              'Elde ettikleri bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
          nextStoryId: '27'),
    ],
  ),
// Aşama 12
  Story(
    id: '12',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin tehlikeli olduğunu düşünerek araştırmayı bırakırlar.',
    choices: [
      Choice(
          text: 'İleriye dönük planlarını tartışmaya başlarlar.',
          nextStoryId: '28'),
      Choice(
          text:
              'Araştırmayı bıraktıkları için pişmanlık duyarlar ve tekrar araştırmaya karar verirler.',
          nextStoryId: '29'),
    ],
  ),
// Aşama 13
  Story(
    id: '13',
    text:
        'Acemi dedektif, verilen ipuçlarını dikkatlice takip eder ve suikatin arkasındaki kişi hakkında daha fazla bilgi edinir.',
    choices: [
      Choice(
          text: 'Elde edilen bilgileri Aybars ile paylaşır.',
          nextStoryId: '30'),
      Choice(
          text:
              'Elde edilen bilgileri değerlendirmek ve daha fazla kanıt toplamak için zaman ister.',
          nextStoryId: '31'),
    ],
  ),
// Aşama 14
  Story(
    id: '14',
    text:
        'Acemi dedektif, ipuçlarını yanlış anlayarak farklı bir yöne ilerlemeye karar verir ve hatalı bir bilgi edinir.',
    choices: [
      Choice(
          text:
              'Alınan bilginin yanıltıcı olduğunu anlayarak yeni bir ipucu arayışına başlar.',
          nextStoryId: '32'),
      Choice(
          text:
              'Alınan bilginin doğruluğunu kontrol etmeyi ve teyit etmeyi tercih eder.',
          nextStoryId: '33'),
    ],
  ),
// Aşama 15
// Aşama 15
  Story(
    id: '15',
    text:
        'Aybars, acemi dedektife suikatin arkasındaki kişinin kim olduğunu anlatmaya başlar.',
    choices: [
      Choice(
          text:
              'Acemi dedektife kişinin adını verir ve onunla ilgili daha fazla bilgi paylaşır.',
          nextStoryId: '34'),
      Choice(
          text:
              'Aybars, suikatin arkasındaki kişinin kimliğini açıklamak yerine ona daha fazla detaylı ipuçları verir.',
          nextStoryId: '35'),
    ],
  ),
// Aşama 16
  Story(
    id: '16',
    text:
        'Aybars, acemi dedektife suikatin arkasındaki kişinin kim olduğunu anlatarak yardım etmeye karar verir.',
    choices: [
      Choice(
          text:
              'Acemi dedektife kişinin adını verir ve onunla ilgili daha fazla bilgi paylaşır.',
          nextStoryId: '34'),
      Choice(
          text:
              'Aybars, suikatin arkasındaki kişinin kimliğini açıklamak yerine ona daha fazla detaylı ipuçları verir.',
          nextStoryId: '35'),
    ],
  ),
// Aşama 17
  Story(
    id: '17',
    text:
        'Aybars, suikatin arkasındaki kişinin ona zarar vermek istediğini düşünerek acemi dedektife yardım etmeye karar verir.',
    choices: [
      Choice(
          text:
              'Acemi dedektife suikatin arkasındaki kişiyi bulmalarına yardım etmesi için bazı ipuçları verir.',
          nextStoryId: '16'),
      Choice(
          text:
              'Daha fazla tehlikeye girmemeleri için acemi dedektife yardım etmemesi gerektiğini söyler.',
          nextStoryId: '17'),
    ],
  ),
// Aşama 18
  Story(
    id: '18',
    text:
        'Aybars, suikatin arkasındaki kişinin kim olduğunu anlatır ve eski karısı olduğunu açıklar.',
    choices: [
      Choice(
          text:
              'Eski karısı ile ilgili daha fazla ayrıntı istediğini belirtir.',
          nextStoryId: '36'),
      Choice(
          text: 'Eski karısının suikatin arkasındaki nedenlerini sorgular.',
          nextStoryId: '37'),
    ],
  ),
// Aşama 19
  Story(
    id: '19',
    text:
        'Acemi dedektif, Aybars"ın geçmişteki suçlarından dolayı ona suçlayıcı bir şekilde yaklaşır.',
    choices: [
      Choice(
          text:
              'Aybars"a suçlamalarını açıklar ve onun geçmişi hakkında daha fazla bilgi ister.',
          nextStoryId: '38'),
      Choice(
          text:
              'Aybars"ın geçmişteki suçları hakkında yargılamadan yardım etmeye devam etmeye karar verir.',
          nextStoryId: '39'),
    ],
  ),
// Aşama 20
  Story(
    id: '20',
    text:
        'Aybars, geçmişte işlediği suçların arkasında olduğunu kabul eder ve pişmanlığını dile getirir.',
    choices: [
      Choice(
          text:
              'Aybars"ın geçmişteki suçlarından dolayı ona yardım etmeyi reddeder.',
          nextStoryId: '40'),
      Choice(
          text:
              'Aybars"a yardım etmeye karar verir ve suikatin arkasındaki sırrı çözmeye çalışır.',
          nextStoryId: '41'),
    ],
  ),
// Aşama 21
  Story(
    id: '21',
    text:
        'Acemi dedektif ve Aybars, suikatin arkasındaki sırrı çözmek için ellerindeki ipuçlarını değerlendirmeye başlarlar.',
    choices: [
      Choice(
          text: 'Bir sonraki adımda nereye gideceklerini tartışırlar.',
          nextStoryId: '42'),
      Choice(
          text:
              'Elde ettikleri bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
          nextStoryId: '43'),
    ],
  ),
// Aşama 22
  Story(
    id: '22',
    text:
        'Acemi dedektif, Aybars"a adanın avantajlarını ve dezavantajlarını sormaya başlar.',
    choices: [
      Choice(
          text:
              'Aybars"ın adada yaşamaktan hoşlandığı şeyleri sormaya devam eder.',
          nextStoryId: '44'),
      Choice(
          text:
              'Acemi dedektif, adada yaşamayı düşünür ve Aybars"tan daha fazla bilgi ister.',
          nextStoryId: '45'),
    ],
  ),
// Aşama 23
  Story(
    id: '23',
    text:
        'Aybars, adanın huzurlu ve sessiz atmosferinin kendisine iyi geldiğini söyler.',
    choices: [
      Choice(
          text: 'Adada yaşamanın avantajlarını sorgular.', nextStoryId: '22'),
      Choice(
          text: 'Aybars"a adanın ne kadar güvenli olduğunu anlatır.',
          nextStoryId: '23'),
    ],
  ),
// Aşama 24
  Story(
    id: '24',
    text:
        'Acemi dedektif, yalnız yaşamanın bazen zor olabileceğini ve insanların birbirine ihtiyaç duyduğunu ifade eder.',
    choices: [
      Choice(
          text:
              'Yalnızlığın getirdiği zorlukları daha fazla tartışmaya devam eder.',
          nextStoryId: '24'),
      Choice(
          text:
              'Acemi dedektif, Aybars"a yalnız yaşamanın avantajlarını anlatır.',
          nextStoryId: '25'),
    ],
  ),
// Aşama 25
  Story(
    id: '25',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin kim olduğunu çözmeye çalışırlarken beklenmedik bir ipucu bulurlar.',
    choices: [
      Choice(
          text: 'Elde edilen ipucunu daha fazla analiz etmeye karar verirler.',
          nextStoryId: '46'),
      Choice(
          text:
              'İpucunu göz ardı ederler ve farklı bir yöne yönelmeye düşünürler.',
          nextStoryId: '47'),
    ],
  ),
// Aşama 26
  Story(
    id: '26',
    text:
        'Aybars ve acemi dedektif, elde ettikleri ipucunu daha fazla analiz etmeye karar verirler.',
    choices: [
      Choice(
          text: 'İpucunun ne anlama geldiğini çözmeye çalışırlar.',
          nextStoryId: '48'),
      Choice(
          text: 'İpucunu farklı bir ipucuyla birleştirmeye çalışırlar.',
          nextStoryId: '49'),
    ],
  ),
// Aşama 27
  Story(
    id: '27',
    text:
        'Acemi dedektif ve Aybars, elde ettikleri bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri birleştirerek suikatin nedenlerini incelemeye başlarlar.',
          nextStoryId: '50'),
      Choice(
          text:
              'Elde edilen bilgileri suikati düzenleyen kişinin kimliğini tahmin etmeye çalışırlar.',
          nextStoryId: '51'),
    ],
  ),
// Aşama 28
  Story(
    id: '28',
    text:
        'Aybars ve acemi dedektif, ileriye dönük planlarını tartışmaya başlarlar.',
    choices: [
      Choice(
          text:
              'Daha fazla ipucu toplamak ve suikati çözmeye devam etmek istediklerini belirtirler.',
          nextStoryId: '52'),
      Choice(
          text:
              'Araştırmayı bırakmanın daha iyi bir fikir olabileceğini düşünürler.',
          nextStoryId: '53'),
    ],
  ),
// Aşama 29
  Story(
    id: '29',
    text:
        'Aybars ve acemi dedektif, araştırmayı bıraktıklarına pişmanlık duyarlar ve tekrar suikati çözmeye karar verirler.',
    choices: [
      Choice(
          text:
              'Araştırmaya tekrar başlamadan önce yeni bir plan yapmaya çalışırlar.',
          nextStoryId: '54'),
      Choice(
          text:
              'Son alınan bilgileri gözden geçirerek yeni bir strateji belirlerler.',
          nextStoryId: '55'),
    ],
  ),
// Aşama 30
  Story(
    id: '30',
    text:
        'Acemi dedektif, elde ettiği bilgileri Aybars ile paylaşır ve suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text: 'Bir sonraki adımda nereye gideceklerini tartışırlar.',
          nextStoryId: '56'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
          nextStoryId: '57'),
    ],
  ),
// Aşama 31
  Story(
    id: '31',
    text:
        'Acemi dedektif, elde ettiği bilgileri daha fazla değerlendirmek ve daha fazla kanıt toplamak için zaman ister.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
          nextStoryId: '57'),
      Choice(
          text:
              'Kanıtların yetersiz olduğunu düşünerek başka bir plan yapmaya çalışırlar.',
          nextStoryId: '58'),
    ],
  ),
// Aşama 32
  Story(
    id: '32',
    text:
        'Acemi dedektif, alınan bilginin yanıltıcı olduğunu anlayarak yeni bir ipucu arayışına başlar.',
    choices: [
      Choice(
          text:
              'Yeni bir ipucu aramak için farklı kaynakları kullanmaya karar verir.',
          nextStoryId: '59'),
      Choice(
          text:
              'Elde edilen bilginin doğruluğunu teyit etmek için daha fazla çaba harcar.',
          nextStoryId: '60'),
    ],
  ),
// Aşama 33
  Story(
    id: '33',
    text:
        'Acemi dedektif, alınan bilginin doğruluğunu kontrol etmeyi ve teyit etmeyi tercih eder.',
    choices: [
      Choice(
          text:
              'Bilginin doğruluğunu teyit etmek için farklı kaynakları kullanmaya karar verir.',
          nextStoryId: '61'),
      Choice(
          text:
              'Bilginin yanıltıcı olduğunu düşünerek başka bir ipucu aramaya karar verir.',
          nextStoryId: '62'),
    ],
  ),
// Aşama 34
  Story(
    id: '34',
    text:
        'Aybars, eski karısının adını verir ve onunla ilgili daha fazla bilgi paylaşır.',
    choices: [
      Choice(
          text:
              'Acemi dedektife eski karısının suikatin arkasındaki nedenlerini anlatmaya başlar.',
          nextStoryId: '63'),
      Choice(
          text: 'Eski karısının motive olduğu nedenleri sorgular.',
          nextStoryId: '64'),
    ],
  ),
// Aşama 35
  Story(
    id: '35',
    text:
        'Aybars, suikatin arkasındaki kişinin kimliğini açıklamak yerine ona daha fazla detaylı ipuçları verir.',
    choices: [
      Choice(
          text:
              'Acemi dedektife suikati çözmek için daha fazla yardım etmeye karar verir.',
          nextStoryId: '65'),
      Choice(
          text:
              'Aybars"ın verdiği ipuçlarını takip ederek suikati çözmeye çalışırlar.',
          nextStoryId: '66'),
    ],
  ),
// Aşama 36
  Story(
    id: '36',
    text:
        'Aybars, eski karısıyla olan ilişkisini anlatmaya başlar ve suikatin arkasındaki nedenleri açıklar.',
    choices: [
      Choice(
          text:
              'Eski karısıyla olan ilişkisinin ayrıntılarını öğrenmeye devam eder.',
          nextStoryId: '67'),
      Choice(
          text:
              'Eski karısının motive olduğu nedenleri sorgular ve daha fazla bilgi ister.',
          nextStoryId: '68'),
    ],
  ),
// Aşama 37
  Story(
    id: '37',
    text:
        'Aybars, eski karısının suikatin arkasındaki nedenlerini anlatırken daha fazla ayrıntı verir.',
    choices: [
      Choice(
          text:
              'Eski karısının motive olduğu nedenleri sorgular ve daha fazla bilgi ister.',
          nextStoryId: '68'),
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
    ],
  ),
// Aşama 38
  Story(
    id: '38',
    text:
        'Aybars"ın geçmişteki suçları hakkında konuşurken suçlayıcı bir ton kullanır ve onun geçmişini sorgular.',
    choices: [
      Choice(
          text:
              'Aybars"ın geçmişteki suçlarının onun suikatle bağlantılı olabileceğini düşünmeye başlar.',
          nextStoryId: '70'),
      Choice(
          text:
              'Aybars"ın geçmişini geride bırakmaları gerektiğini ifade eder ve suikati çözmek için odaklanmalarını önerir.',
          nextStoryId: '71'),
    ],
  ),
// Aşama 39
  Story(
    id: '39',
    text:
        'Acemi dedektif, Aybars"ın geçmişteki suçlarına rağmen ona yardım etmeye karar verir ve suikatin arkasındaki kişiyi bulmaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Aybars"ın geçmişini geride bırakmaları gerektiğini ifade eder ve suikati çözmek için odaklanmalarını önerir.',
          nextStoryId: '71'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin kimliğini çözmek için elde ettikleri bilgileri değerlendirmeye devam ederler.',
          nextStoryId: '72'),
    ],
  ),
// Aşama 40
  Story(
    id: '40',
    text:
        'Aybars, geçmişte işlediği suçların arkasında olduğunu kabul eder ve pişmanlığını dile getirir.',
    choices: [
      Choice(
          text:
              'Aybars"ın geçmişteki suçlarından dolayı ona yardım etmeyi reddeder.',
          nextStoryId: '73'),
      Choice(
          text:
              'Aybars"a yardım etmeye karar verir ve suikatin arkasındaki sırrı çözmeye çalışır.',
          nextStoryId: '74'),
    ],
  ),

// Aşama 41
  Story(
    id: '41',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki sırrı çözmeye çalışırlarken beklenmedik bir ipucu bulurlar.',
    choices: [
      Choice(
          text: 'Elde edilen ipucunu daha fazla analiz etmeye karar verirler.',
          nextStoryId: '75'),
      Choice(
          text:
              'İpucunu göz ardı ederler ve farklı bir yöne yönelmeye düşünürler.',
          nextStoryId: '76'),
    ],
  ),
// Aşama 42
  Story(
    id: '42',
    text:
        'Acemi dedektif ve Aybars, elde ettikleri ipucuları birleştirerek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 43
  Story(
    id: '43',
    text:
        'Acemi dedektif, elde ettikleri bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 44
  Story(
    id: '44',
    text:
        'Aybars ve acemi dedektif, adanın huzurlu ve sessiz atmosferinin kendisine iyi geldiğini söyler.',
    choices: [
      Choice(
          text: 'Adada yaşamanın avantajlarını sorgularlar.',
          nextStoryId: '79'),
      Choice(
          text: 'Adanın sessizliğinde huzur bulmanın önemini tartışırlar.',
          nextStoryId: '80'),
    ],
  ),
// Aşama 45
  Story(
    id: '45',
    text:
        'Acemi dedektif, adada yaşamayı düşünür ve Aybars\'tan daha fazla bilgi ister.',
    choices: [
      Choice(
          text: 'Adanın güvenli bir yer olup olmadığını sorgular.',
          nextStoryId: '81'),
      Choice(
          text: 'Adada yaşamanın getirdiği zorlukları Aybars\'a sorar.',
          nextStoryId: '82'),
    ],
  ),
// Aşama 46
  Story(
    id: '46',
    text:
        'Aybars ve acemi dedektif, elde edilen ipucunu daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 47
  Story(
    id: '47',
    text:
        'Aybars ve acemi dedektif, ipucunu farklı bir yöne yönlendirmek için yeni bir strateji belirlerler.',
    choices: [
      Choice(
          text:
              'Yeni bir ipucu arayışına girmek için farklı kaynakları kullanmaya karar verirler.',
          nextStoryId: '83'),
      Choice(
          text:
              'Elde edilen ipucunu başka bir ipucuyla birleştirerek suikatin arkasındaki kişinin kim olduğunu çözmeye çalışırlar.',
          nextStoryId: '84'),
    ],
  ),
// Aşama 48
  Story(
    id: '48',
    text:
        'Aybars ve acemi dedektif, elde edilen ipucunu daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 49
  Story(
    id: '49',
    text:
        'Aybars ve acemi dedektif, elde ettikleri farklı ipuçlarını birleştirerek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 50
  Story(
    id: '50',
    text:
        'Acemi dedektif ve Aybars, elde ettikleri bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırmaya başlarlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 51
  Story(
    id: '51',
    text:
        'Acemi dedektif ve Aybars, elde ettikleri bilgileri suikati düzenleyen kişinin kimliğini tahmin etmeye çalışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin kimliğini daha iyi anlamak için Aybars\'ın eski karısını sorgularlar.',
          nextStoryId: '87'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 52
  Story(
    id: '52',
    text:
        'Aybars ve acemi dedektif, daha fazla ipucu toplamak ve suikati çözmeye devam etmek istediklerini belirtirler.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 53
  Story(
    id: '53',
    text:
        'Aybars ve acemi dedektif, araştırmayı bırakmanın daha iyi bir fikir olabileceğini düşünürler.',
    choices: [
      Choice(
          text:
              'Araştırmaya tekrar başlamadan önce yeni bir plan yapmaya çalışırlar.',
          nextStoryId: '54'),
      Choice(
          text:
              'Son alınan bilgileri gözden geçirerek yeni bir strateji belirlerler.',
          nextStoryId: '55'),
    ],
  ),
// Aşama 54
  Story(
    id: '54',
    text:
        'Aybars ve acemi dedektif, araştırmaya tekrar başlamadan önce yeni bir plan yapmaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 55
  Story(
    id: '55',
    text:
        'Aybars ve acemi dedektif, son alınan bilgileri gözden geçirerek yeni bir strateji belirlerler.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 56
  Story(
    id: '56',
    text:
        'Acemi dedektif ve Aybars, bir sonraki adımda nereye gideceklerini tartışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 57
  Story(
    id: '57',
    text:
        'Acemi dedektif ve Aybars, elde edilen bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 58
  Story(
    id: '58',
    text:
        'Aybars ve acemi dedektif, kanıtların yetersiz olduğunu düşünerek başka bir plan yapmaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 59
  Story(
    id: '59',
    text:
        'Acemi dedektif, yeni bir ipucu aramak için farklı kaynakları kullanmaya karar verir.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
          nextStoryId: '77'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
          nextStoryId: '78'),
    ],
  ),
// Aşama 60
  Story(
    id: '60',
    text:
        'Acemi dedektif, elde edilen bilginin doğruluğunu teyit etmek için daha fazla çaba harcar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 61
  Story(
    id: '61',
    text:
        'Acemi dedektif, elde edilen bilgileri daha fazla analiz ederek suikatin arkasındaki kişinin kim olduğunu anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 62
  Story(
    id: '62',
    text:
        'Acemi dedektif, elde edilen bilginin yanıltıcı olabileceğini düşünerek başka bir ipucu aramaya karar verir.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),

// Aşama 63
  Story(
    id: '63',
    text:
        'Aybars, eski karısının suikatin arkasındaki nedenlerini anlatmaya başlar.',
    choices: [
      Choice(
          text:
              'Eski karısının motive olduğu nedenleri sorgular ve daha fazla bilgi ister.',
          nextStoryId: '64'),
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
    ],
  ),
// Aşama 64
  Story(
    id: '64',
    text:
        'Aybars, eski karısının motive olduğu nedenleri sorgular ve daha fazla bilgi ister.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Eski karısının geçmişteki hareketlerini incelemeye karar verir.',
          nextStoryId: '70'),
    ],
  ),
// Aşama 65
  Story(
    id: '65',
    text:
        'Acemi dedektif, suikati çözmek için daha fazla yardım etmeye karar verir.',
    choices: [
      Choice(
          text:
              'Aybars\'ın verdiği ipuçlarını takip ederek suikati çözmeye çalışırlar.',
          nextStoryId: '66'),
      Choice(
          text:
              'Acemi dedektif, elde edilen ipucuları daha fazla analiz etmeye karar verir.',
          nextStoryId: '75'),
    ],
  ),
// Aşama 66
  Story(
    id: '66',
    text:
        'Aybars\'ın verdiği ipuçlarını takip ederek suikati çözmeye çalışırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 67
  Story(
    id: '67',
    text: 'Eski karısının geçmişteki hareketlerini incelemeye devam ederler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 68
  Story(
    id: '68',
    text:
        'Eski karısının motive olduğu nedenleri sorgular ve daha fazla bilgi ister.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
    ],
  ),
// Aşama 69
  Story(
    id: '69',
    text: 'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 70
  Story(
    id: '70',
    text:
        'Aybars\'ın geçmişteki suçlarının onun suikatle bağlantılı olabileceğini düşünmeye başlar.',
    choices: [
      Choice(
          text:
              'Aybars\'ın geçmişini geride bırakmaları gerektiğini ifade eder ve suikati çözmek için odaklanmalarını önerir.',
          nextStoryId: '71'),
      Choice(
          text:
              'Aybars\'ın suçlarının suikatle bağlantılı olmadığına dair daha fazla kanıt aramaya karar verir.',
          nextStoryId: '72'),
    ],
  ),
// Aşama 71
  Story(
    id: '71',
    text:
        'Aybars\'ın geçmişini geride bırakmaları gerektiğini ifade eder ve suikati çözmek için odaklanmalarını önerir.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 72
  Story(
    id: '72',
    text:
        'Aybars\'ın suçlarının suikatle bağlantılı olmadığına dair daha fazla kanıt aramaya karar verir.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
    ],
  ),
// Aşama 73
  Story(
    id: '73',
    text:
        'Aybars\'ın geçmişteki suçlarından dolayı ona yardım etmeyi reddeder.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
    ],
  ),
// Aşama 74
  Story(
    id: '74',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin nedenlerini anlamak için son bir çaba gösterirler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 75
  Story(
    id: '75',
    text:
        'Acemi dedektif, elde edilen ipucuları daha fazla analiz etmeye karar verir.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 76
  Story(
    id: '76',
    text:
        'Aybars ve acemi dedektif, elde ettikleri son ipuçlarıyla suikati çözmek için son bir çaba gösterirler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için eski karısını sorgularlar.',
          nextStoryId: '85'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 77
  Story(
    id: '77',
    text:
        'Aybars ve acemi dedektif, elde edilen bilgileri suikatin nedenleriyle birleştirerek motive olma sebeplerini araştırırlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek motive olma sebeplerini çözmeye çalışırlar.',
          nextStoryId: '88'),
    ],
  ),
// Aşama 78
  Story(
    id: '78',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha fazla anlamak için yeni bir strateji belirlerler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 79
  Story(
    id: '79',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için bir araya gelirler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 80
  Story(
    id: '80',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için yeni bir yol haritası belirlerler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 81
  Story(
    id: '81',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için yeni bir strateji oluştururlar.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 82
  Story(
    id: '82',
    text:
        'Acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için Aybars\'a danışır.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 83
  Story(
    id: '83',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için farklı bir yaklaşım denemeye karar verirler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 84
  Story(
    id: '84',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için yeni bir strateji belirlerler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek planları çözmeye çalışırlar.',
          nextStoryId: '89'),
    ],
  ),
// Aşama 85
  Story(
    id: '85',
    text:
        'Aybars ve acemi dedektif, eski karısının motive olduğu nedenleri anlamaya çalışırlar.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin nedenleri hakkında daha fazla bilgi edinmek için yeni bir plan yaparlar.',
          nextStoryId: '86'),
    ],
  ),
// Aşama 86
  Story(
    id: '86',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin nedenlerini daha iyi anlamak için yeni bir plan yaparlar.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek motive olma sebeplerini çözmeye çalışırlar.',
          nextStoryId: '88'),
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha iyi anlamak için farklı bir yaklaşım denemeye karar verirler.',
          nextStoryId: '87'),
    ],
  ),
// Aşama 87
  Story(
    id: '87',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin nedenlerini daha iyi anlamak için farklı bir yaklaşım denemeye karar verirler.',
    choices: [
      Choice(
          text:
              'Elde edilen bilgileri daha fazla analiz ederek motive olma sebeplerini çözmeye çalışırlar.',
          nextStoryId: '88'),
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
    ],
  ),
// Aşama 88
  Story(
    id: '88',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin motive olma sebeplerini çözmeye çalışırlar.',
    choices: [
      Choice(
          text:
              'Son ipuçlarına dayanarak planları daha iyi anlamaya çalışırlar.',
          nextStoryId: '89'),
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
    ],
  ),
// Aşama 89
  Story(
    id: '89',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için yeni bir strateji belirlerler.',
    choices: [
      Choice(
          text:
              'Suikatin arkasındaki kişinin planlarını daha fazla analiz ederek motive olma sebeplerini çözmeye çalışırlar.',
          nextStoryId: '90'),
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
    ],
  ),
// Aşama 90
  Story(
    id: '90',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin motive olma sebeplerini daha iyi anlamak için yeni bir plan yaparlar.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Son ipuçlarına dayanarak planları daha iyi anlamaya çalışırlar.',
          nextStoryId: '91'),
    ],
  ),
// Aşama 91
  Story(
    id: '91',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha iyi anlamak için son bir çaba gösterirler.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Son ipuçlarına dayanarak planları daha iyi anlamaya çalışırlar.',
          nextStoryId: '92'),
    ],
  ),
// Aşama 92
  Story(
    id: '92',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını daha fazla analiz ederler.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
      Choice(
          text:
              'Son ipuçlarına dayanarak planları daha iyi anlamaya çalışırlar.',
          nextStoryId: '93'),
    ],
  ),
// Aşama 93
  Story(
    id: '93',
    text:
        'Aybars ve acemi dedektif, elde ettikleri son bilgilerle suikatin arkasındaki planları çözmeye çalışırlar.',
    choices: [
      Choice(
          text:
              'Son ipuçlarına dayanarak planları daha iyi anlamaya çalışırlar.',
          nextStoryId: '94'),
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarını çözmeye çalışır.',
          nextStoryId: '69'),
    ],
  ),
// Aşama 94
  Story(
    id: '94',
    text:
        'Aybars ve acemi dedektif, suikatin arkasındaki kişinin planlarını sonunda çözerler.',
    choices: [
      Choice(
          text: 'Son bir hamleyle suikati engellemeye çalışırlar.',
          nextStoryId: '95'),
      Choice(
          text:
              'Yetkililere suikatin detaylarını bildirirler ve suikati önlemeye yardımcı olurlar.',
          nextStoryId: '96'),
    ],
  ),
// Aşama 95
  Story(
    id: '95',
    text:
        'Aybars ve acemi dedektif, son bir hamleyle suikati engellemeye çalışırlar.',
    choices: [
      Choice(
          text: 'Suikati engellemek için her türlü çabayı gösterirler.',
          nextStoryId: '97'),
    ],
  ),
// Aşama 96
  Story(
    id: '96',
    text:
        'Aybars ve acemi dedektif, yetkililere suikatin detaylarını bildirirler ve suikati önlemeye yardımcı olurlar.',
    choices: [
      Choice(
          text: 'Suikatin arkasındaki kişinin yakalanmasını beklerler.',
          nextStoryId: '97'),
    ],
  ),
// Aşama 97
  Story(
    id: '97',
    text:
        'Aybars ve acemi dedektif, sonunda suikati engellemeyi başarırlar ve suikatin arkasındaki kişi yakalanır.',
    choices: [
      Choice(
          text:
              'Eski karısının planlarının suikati çözmekle ilgisi olup olmadığını araştırmaya devam ederler.',
          nextStoryId: '98'),
    ],
  ),
// Aşama 98
  Story(
    id: '98',
    text:
        'Aybars ve acemi dedektif, eski karısının planlarının suikati çözmekle ilgisi olup olmadığını araştırmaya devam ederler.',
    choices: [
      Choice(
          text:
              'Eski karısının suikatin arkasındaki planlarına daha fazla ışık tutarlar.',
          nextStoryId: '99'),
    ],
  ),
// Aşama 99
  Story(
    id: '99',
    text:
        'Aybars ve acemi dedektif, eski karısının suikatin arkasındaki planlarına daha fazla ışık tutarlar.',
    choices: [
      Choice(
          text:
              'Sonunda gerçeği keşfederler ve suikatin nedenlerini tam anlamıyla çözerler.',
          nextStoryId: '100'),
    ],
  ),
// Aşama 100
  Story(
    id: '100',
    text:
        'Aybars ve acemi dedektif, sonunda gerçeği keşfederler ve suikatin nedenlerini tam anlamıyla çözerler.',
    choices: [
      Choice(text: 'Hikaye burada sona erer.', nextStoryId: ''),
    ],
  ),
// Hikaye burada sona erer.
];
