import 'package:todo/models/category.dart';
import 'package:todo/reposotories/repository.dart';

class CategoryService{
  Repository _repository;

  CategoryService(){
    _repository = Repository();
  }

  saveCategory(Category category)async {
    return await _repository.inserData('categories', category.categoryMap());
  }
}