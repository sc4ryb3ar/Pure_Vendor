# Insert new variables inside the Pure structure
pure_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Pure": {'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
