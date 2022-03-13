import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:healthxchangehack/pages/patientportal.dart';

class NewPatientPage extends StatefulWidget {
  NewPatientPage();
  @override
  State<StatefulWidget> createState() {
    return _NewPatientPageState();
  }
}

class _NewPatientPageState extends State<NewPatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Patient'),
        ),
        body: MyCustomForm());
  }
}

//CREATE FORM HERE
class MyCustomForm extends StatefulWidget {
  get model => null;
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var _selectedItem2;
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your first name',
                  labelText: 'First Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                //  onChanged: (val) => widget.model.saveInfo(),
                //  onSaved: (value) => setState(() => firstname = value),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your last name',
                  labelText: 'Last Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your middle name',
                  labelText: 'Middle Name',
                ),
                //No need for validator for middle name
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'DOB: MM/DD/YYYY',
                  labelText: 'Enter your date of birth',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid date';
                  }
                  return null;
                },
              ),
              //"Personal Information" Header here
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.home),
                  hintText: 'Enter your street address',
                  labelText: 'Street Address',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.location_city),
                  hintText: 'Enter your city',
                  labelText: 'City',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Text(
                '\nChoose a state:',
                style: TextStyle(fontSize: 16),
              ),
              DropdownButtonFormField<String>(
                hint: Text("State"),
                items: <String>[
                  'AK',
                  'AL',
                  'AR',
                  'AZ',
                  'CA',
                  'CO',
                  'CT',
                  'DC',
                  'DE',
                  'FL',
                  'GA',
                  'HI',
                  'IA',
                  'ID',
                  'IL',
                  'IN',
                  'KS',
                  'KY',
                  'LA',
                  'MA',
                  'MD',
                  'ME',
                  'MI',
                  'MN',
                  'MS',
                  'MO',
                  'MT',
                  'NC',
                  'NE',
                  'NH',
                  'NJ',
                  'NM',
                  'NV',
                  'NY',
                  'ND',
                  'OH',
                  'OK',
                  'OR',
                  'PA',
                  'RI',
                  'SC',
                  'SD',
                  'TN',
                  'TX',
                  'UT',
                  'VT',
                  'VA',
                  'WA',
                  'WV',
                  'WI',
                  'WY'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (String? value) => setState(() {
                  _selectedItem2 = value ?? "";
                }),
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.add_location),
                  hintText: 'Enter your zip code',
                  labelText: 'Zip Code',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    //did i do this right
                    return 'Please enter zip code numbers';
                  }
                  return null;
                },
              ),
              //address completed
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid phone number';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person_add_alt),
                  hintText: 'Name',
                  labelText: 'Emergency Contact Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter name of Emergency Contact';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone_forwarded_outlined),
                  hintText: 'Phone #',
                  labelText: 'Emergency Contact Phone #',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter phone # of Emergency Contact';
                  }
                  return null;
                },
              ),

              // Demographic Information
              DropdownButtonFormField<String>(
                hint: Text("Sex Assigned at Birth"),
                items: <String>[
                  'Male',
                  'Female',
                  'Intersex',
                  'Prefer not to disclose'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    value = value.toString();
                  });
                },
              ),

              DropdownButtonFormField<String>(
                hint: Text("Gender Identity"),
                items: <String>[
                  'Agender',
                  'Man',
                  'Woman',
                  'Genderfluid',
                  'Non-binary',
                  'Questioning or unsure',
                  'Prefer not to disclose',
                  'Other gender category'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    value = value.toString();
                  });
                },
              ),

              DropdownButtonFormField<String>(
                hint: Text("Preferred Pronouns"),
                items: <String>[
                  'She/Her/Hers',
                  'He/Him/His',
                  'They/Them/Their',
                  'Ze/Zir/Zirs',
                  'Ze/Hir/Hirs',
                  'Prefer not to disclose'
                      'Other pronoun set'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    value = value.toString();
                  });
                },
              ),

              DropdownButtonFormField<String>(
                hint: Text("Are you Hispanic or Latino?"),
                items: <String>[
                  'Hispanic or Latino or Spanish Origin',
                  'Not Hispanic or Latino or Spanish Origin',
                  'Prefer not to disclose'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    value = value.toString();
                  });
                },
              ),

              DropdownButtonFormField<String>(
                hint: Text("Select your race"),
                items: <String>[
                  'American Indian or Alaska Native',
                  'Asian',
                  'Black or African American',
                  'Native Hawaiian or Other Pacific Islander',
                  'White',
                  'Prefer not to disclose'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    value = value.toString();
                  });
                },
              ),
              // Username/password creation
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person_pin_rounded),
                  hintText: 'Create username or enter email',
                  labelText: 'Username or Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter username or email';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.lock),
                  hintText: 'Enter new password',
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.lock_outline),
                  hintText: 'Enter password ',
                  labelText: 'Confirm Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please confirm password created';
                  }
                  return null;
                },
              ),
              //DO NOT EDIT THE STUFF BELOW PLEASE (BROOKE)
              Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => PatientPortal()));
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
