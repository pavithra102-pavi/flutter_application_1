import 'package:flutter/material.dart';

class ProfitYieldScreen extends StatefulWidget {
  const ProfitYieldScreen({super.key});

  @override
  State<ProfitYieldScreen> createState() => _ProfitYieldScreenState();
}

class _ProfitYieldScreenState extends State<ProfitYieldScreen> {
  final _formKey = GlobalKey<FormState>();

  // Input controllers
  final cropTypeController = TextEditingController();
  final landAreaController = TextEditingController();
  final soilTypeController = TextEditingController();
  final seedCostController = TextEditingController();
  final fertCostController = TextEditingController();
  final laborCostController = TextEditingController();
  final machineCostController = TextEditingController();
  final yieldController = TextEditingController();
  final marketPriceController = TextEditingController();

  // Output values
  double totalCost = 0;
  double totalIncome = 0;
  double estimatedProfit = 0;
  double totalYieldKg = 0;

  void calculateProfit() {
    double landInSents = double.tryParse(landAreaController.text) ?? 0;

    double seed = (double.tryParse(seedCostController.text) ?? 0) * landInSents;
    double fert = (double.tryParse(fertCostController.text) ?? 0) * landInSents;
    double labor =
        (double.tryParse(laborCostController.text) ?? 0) * landInSents;
    double machine =
        (double.tryParse(machineCostController.text) ?? 0) * landInSents;

    totalYieldKg = (double.tryParse(yieldController.text) ?? 0) * landInSents;

    double marketPrice = double.tryParse(marketPriceController.text) ?? 0;

    totalCost = seed + fert + labor + machine;
    totalIncome = totalYieldKg * marketPrice;
    estimatedProfit = totalIncome - totalCost;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profit Yield Estimator"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter Farmer Inputs:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              buildTextField("Crop Type", cropTypeController),
              buildTextField("Land Area (in sents)", landAreaController),

              const Padding(
                padding: EdgeInsets.only(bottom: 10, top: 4),
                child: Text(
                  "All values below are per sent",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),

              buildTextField("Soil Type (optional)", soilTypeController),
              buildTextField(
                "Seed Cost per sent (₹)",
                seedCostController,
                isNumber: true,
              ),
              buildTextField(
                "Fertilizer & Pesticide Cost per sent (₹)",
                fertCostController,
                isNumber: true,
              ),
              buildTextField(
                "Labor Cost per sent (₹)",
                laborCostController,
                isNumber: true,
              ),
              buildTextField(
                "Machine Rental per sent (₹)",
                machineCostController,
                isNumber: true,
              ),
              buildTextField(
                "Expected Yield per sent (kg)",
                yieldController,
                isNumber: true,
              ),
              buildTextField(
                "Market Price per kg (₹)",
                marketPriceController,
                isNumber: true,
              ),

              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: calculateProfit,
                  child: const Text("Calculate Profit"),
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                "📊 Output:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              resultRow("Total Yield", "${totalYieldKg.toStringAsFixed(2)} kg"),
              resultRow(
                "Income from Yield",
                "₹${totalIncome.toStringAsFixed(2)}",
              ),
              resultRow("Total Cost", "₹${totalCost.toStringAsFixed(2)}"),
              resultRow(
                "Estimated Profit",
                "₹${estimatedProfit.toStringAsFixed(2)}",
              ),

              const SizedBox(height: 10),
              if (estimatedProfit > 0)
                Text(
                  "✅ Profitable Crop!",
                  style: TextStyle(
                    color: Colors.green[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              else
                const Text(
                  "⚠️ Loss! Consider changing plan.",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Helper Widgets ----------

  Widget buildTextField(
    String label,
    TextEditingController controller, {
    bool isNumber = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget resultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
