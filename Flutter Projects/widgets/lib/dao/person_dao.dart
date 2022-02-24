import 'package:column_example/entity/person.dart';
import 'package:floor/floor.dart';

@dao
abstract class PersonDao {
  @insert
  Future<int> insertPerson(Person1 person);

  @insert
  Future<List<int>> insertAllaPerson(List<Person1> todo);

  @Query("Select * from Person1")
  Future<List<Person1>> findAllPerson();
  
  @Query("Select * from Person1 Where fName= :fName")
  Future<Person1?> findPerson(String fName);

  @Query("Update Person1 set fName= :newfName, lName= :newlName Where fName= :fName")
  Future<Person1?> updatePerson(String fName, String newfName, String newlName);

  @Query("Delete from Person1 where fName= :fName")
  Future<void> deletePerson(String fName);

  @delete
  Future<int> deleteAllPerson(List<Person1> list);
}
