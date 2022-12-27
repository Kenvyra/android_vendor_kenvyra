# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Kenvyra OTA update package

KENVYRA_TARGET_PACKAGE := $(PRODUCT_OUT)/Kenvyra-$(KENVYRA_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(KENVYRA_TARGET_PACKAGE)
	$(hide) $(SHA256) $(KENVYRA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(KENVYRA_TARGET_PACKAGE).sha256sum
	echo -e "========================================="
	echo -e ""
	echo -e "                    ."
	echo -e "               .o\$$*°    .o*   d"
	echo -e "           .o\$$\$$\$$\$$     o\$$P    d\$$"
	echo -e "         o\$$*dP\$$\$$P    d**\$$o.  \$$b d"
	echo -e "       d\$$° \$$Pd\$$\$$b  °?\$$\$$\$$\$$*°*\$$\$$\$$d\$$"
	echo -e "      \$$P  dP \$$\$$°\$$   d\$$\$$\$$ d\$$o.\$$\$$?\$$ob"
	echo -e "     d\$$   db.\$$b  \$$. d\$$\$$\$$bd\$$***\$$\$$\$$\$$\$$"
	echo -e "     \$$P   ?\$$\$$ °\$$. ?\$$\$$°\$$\$$\$$\$$\$$bo. *\$$\$$\$$b"
	echo -e "     ?b   d*\$$.  *oo\$$°?o\$$b°?.*\$$\$$o?\$$\$$\$$"
	echo -e "      \$$.o*  °\$$b  d\$$o   *\$$o \$$*o?b\$$ \$$"
	echo -e "       \$$b     °\$$dP  ?    \$$**b ? \$$?"
	echo -e "        *\$$o   o*°\$$.      ?b P°?b bb"
	echo -e "          °\$$od°   ?b      \$$    \$$?\$$"
	echo -e "            °?o    P      *    P \$$"
	echo -e "              °\$$.         P      d"
	echo -e "                ?"
	echo -e ""
	echo -e "                Kenvyra"
	echo -e ""
	echo -e "========================================="
	echo -e ""
	@echo "Package Complete: $(KENVYRA_TARGET_PACKAGE)"
