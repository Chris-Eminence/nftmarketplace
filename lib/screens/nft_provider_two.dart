import 'package:flutter/material.dart';
import '../nft_model.dart';

class NFTProviderTwo extends ChangeNotifier {
  final List<NFTDataModel> _nftList = [
    NFTDataModel(
      name: "Apehero",
      description: "A rare CryptoPunk collectible.",
      image: "assets/nft3.png",
      owner: "Alice",
      colorShades: Color(0xFFafbe19),
      imageDetails: 'assets/nft_three_details.jpg',
      price: "3.5 ETH",
      number: "200",
      color: Color(0xFFcbda40), // Background color
      days: "9",
      hours: "12",
      minutes: "23",
    ),
    NFTDataModel(
      name: "Bored Ape",
      description: "Exclusive Bored Ape Yacht Club member.",
      image: "assets/nft4.png",
      owner: "Bob",
      imageDetails: 'assets/nft_four_details.jpg',
      colorShades: Color(0xFFad1a66),
      price: "12.0 ETH",
      number: "777",
      color: Color(0XFFdf2a87),
      days: "4",
      hours: "12",
      minutes: "10",
    ),

  ];

  // Getter for the NFT list
  List<NFTDataModel> get nftList => _nftList;

  // Add an NFT to the list
  void addNFT(NFTDataModel nft) {
    _nftList.add(nft);
    notifyListeners();
  }

  // Remove an NFT by index
  void removeNFT(int index) {
    _nftList.removeAt(index);
    notifyListeners();
  }
}
