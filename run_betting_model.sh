run  () {

    cd ~/Documents/flat_pipeline

case $1 in

  update)
    pipenv run python betting_engine/src/load_update/clean_update.py
    ;;

  feature)
    pipenv run python betting_engine/src/features/feature_engineering.py
    ;;

  full)
    pipenv run python betting_engine/src/main_runner.py
    ;;

  predict)
    pipenv run python betting_engine/src/predict/model_predictions.py
    ;;

  train)
    pipenv run python betting_engine/src/models/train_model.py
    ;;

  test)
    pipenv run python betting_engine/src/models/test_model.py
    ;;

  *)
    echo -n "unknown"
    ;;
esac

}
