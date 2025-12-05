import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musium/core/color.dart';
// import 'package:musium/features/explore/presentation/provider/provider.dart';

class SearchExplore extends ConsumerStatefulWidget {
  const SearchExplore({super.key});

  @override
  ConsumerState<SearchExplore> createState() => _SearchStateExplore();
}

class _SearchStateExplore extends ConsumerState<SearchExplore> {

  late TextEditingController textController;

  @override
  void initState(){
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose(){
    textController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // final searchInput = ref.watch(searchInputProvider);
    
    // final searchUiProvider = ref.watch(searchProvider(searchInput));


    return TextField(
      controller: textController,

      decoration: inputDecoration()
    );
  }

  InputDecoration inputDecoration(){
    return InputDecoration(
      filled: true,
      fillColor: AppColor.faintTextColor,

      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),

      prefixIcon: const Icon(Icons.search_sharp),

      hintText: 'Songs, Artist, Podcasts & More',
      
      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
        fontWeight: .w400,
      ),

      suffixIcon: IconButton(
        onPressed: (){
          final textInput = textController.text;

          if(textInput.isNotEmpty){

          }
        }, 
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent)
        ),

        icon: const Icon(Icons.search, size: 20),
      )
    );
  }
}