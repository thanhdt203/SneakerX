import 'package:flutter/material.dart';
import 'package:sneakerx/features/home/data/fake_products.dart';
import 'package:sneakerx/features/home/presentation/widgets/brand_chip.dart';
import 'package:sneakerx/features/home/presentation/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 16),

                // Header
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),

                    const Spacer(),

                    const Text(
                      'SNEAKERX',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    const Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Search
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 55,

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius:
                              BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                        ),

                        child: const TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Search your next drop...',
                            prefixIcon:
                                Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Container(
                      width: 55,
                      height: 55,

                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(16),
                      ),

                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Banner
                Container(
                  height: 320,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(30),

                    gradient:
                        const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xfff0f0f0),
                        Color(0xffbdbdbd),
                      ],
                    ),
                  ),

                  child: Padding(
                    padding:
                        const EdgeInsets.all(24),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),

                          decoration:
                              BoxDecoration(
                            color:
                                Colors.greenAccent,

                            borderRadius:
                                BorderRadius.circular(
                                    20),
                          ),

                          child: const Text(
                            'LIMITED EDITION',
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(
                            height: 16),

                        const Text(
                          'THE SILVER\nCOLLECTION',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight:
                                FontWeight.w900,
                            height: 1,
                          ),
                        ),

                        const Spacer(),

                        ElevatedButton(
                          style:
                              ElevatedButton
                                  .styleFrom(
                            backgroundColor:
                                Colors.white,
                            foregroundColor:
                                Colors.black,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Shop Now',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Brands
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [

                    Text(
                      'Brands',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                SizedBox(
                  height: 50,

                  child: ListView(
                    scrollDirection:
                        Axis.horizontal,

                    children: const [

                      BrandChip(
                        title: 'Nike',
                      ),

                      SizedBox(width: 12),

                      BrandChip(
                        title: 'Adidas',
                      ),

                      SizedBox(width: 12),

                      BrandChip(
                        title: 'Puma',
                      ),

                      SizedBox(width: 12),

                      BrandChip(
                        title: 'Jordan',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Featured
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  children: [

                    Text(
                      'Featured',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                GridView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(),

                  itemCount: products.length,

                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75,
                  ),

                  itemBuilder:
                      (context, index) {
                    return ProductCard(
                      product:
                          products[index],
                    );
                  },
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}