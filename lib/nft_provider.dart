import 'package:flutter/material.dart';
import 'nft_model.dart';

class NFTProvider extends ChangeNotifier {
  final List<NFTDataModel> _nftList = [
    NFTDataModel(
      name: "Apehero",
      description: "A rare CryptoPunk collectible.",
      image: "assets/nft1.png",
      owner: "Alice",
      imageDetails: 'assets/nft_one_details.jpg',
      price: "3.5 ETH",
      number: "200",
      color: Color(0xFFdc5e07),
      colorShades: Color(0xFFb34b04),
      days: "9",
      hours: "12",
      minutes: "23",
    ),
    NFTDataModel(
      name: "Bored Ape",
      description: "Exclusive Bored Ape Yacht Club member.",
      image: "assets/nft2.png",
      owner: "Bob",
      imageDetails: 'assets/nft_two_details.jpg',
      colorShades: Color(0xFF43a0ab),
      price: "12.0 ETH",
      number: "777",
      color: Color(0XFF76cdd7),
      days: "4",
      hours: "12",
      minutes: "10",
    ),
    NFTDataModel(
      name: "Bored Ape",
      description: "Exclusive Bored Ape Yacht Club member.",
      image: "assets/nft1.png",
      owner: "Bob",
      price: "12.0 ETH",
      imageDetails: 'assets/nft_one_details.jpg',
      number: "777",
      colorShades: Color(0xFFb34b04),
      color: Color(0xFFdc5e07), // Background color
      days: "4",
      hours: "12",
      minutes: "10",
    )
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
