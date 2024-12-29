vcpkg_download_distfile(ARCHIVE
  URLS "https://astron.com/pub/file/file-${VERSION}.tar.gz"
  FILENAME "file-${VERSION}.tar.gz"
  SHA512 11111
)

vcpkg_extract_source_archive(
  SOURCE_PATH
  ARCHIVE "${ARCHIVE}"
)

vcpkg_configure_make(
  SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_install_make()
vcpkg_fixup_pkgconfig()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/COPYING")
